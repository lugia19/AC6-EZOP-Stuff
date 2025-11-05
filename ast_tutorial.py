#!/usr/bin/env python3
"""
AST Parsing Tutorial - From Simple to Complex
Learn by doing with progressively harder examples
"""

from luaparser import ast
from luaparser.astnodes import *


print("=" * 70)
print("LESSON 1: Parse a Simple Function")
print("=" * 70)

lua_code_1 = """
function greet(name)
    return "Hello, " .. name
end
"""

tree = ast.parse(lua_code_1)

# Walk the tree and find the function
for node in ast.walk(tree):
    if isinstance(node, Function):
        func_name = node.name.id
        params = [p.id for p in node.args]
        print(f"Found function: {func_name}")
        print(f"Parameters: {params}")

print("\nExercise: Try changing 'greet' to 'goodbye' and see what happens!\n")


print("=" * 70)
print("LESSON 2: Find Variable Assignments")
print("=" * 70)

lua_code_2 = """
function calculate(x, y)
    local sum = x + y
    local product = x * y
    return sum, product
end
"""

tree = ast.parse(lua_code_2)

print("Looking for local variable assignments...")
for node in ast.walk(tree):
    if isinstance(node, LocalAssign):
        # LocalAssign has 'targets' (left side) and 'values' (right side)
        for target in node.targets:
            if isinstance(target, Name):
                print(f"  Found local variable: {target.id}")

print("\nExercise: What if we wanted to track what values are assigned?")
print("Hint: Look at node.values\n")


print("=" * 70)
print("LESSON 3: Trace a Simple Argument")
print("=" * 70)

lua_code_3 = """
function double(number)
    local result = number * 2
    return result
end
"""

tree = ast.parse(lua_code_3)

print("Tracing the 'number' parameter...")

# Find the function
func_node = None
for node in ast.walk(tree):
    if isinstance(node, Function):
        func_node = node
        break

# Find where 'number' is used in assignments
print("  'number' is a parameter")
for node in ast.walk(func_node):
    if isinstance(node, LocalAssign):
        # Check if 'number' is in the assigned value
        for value in node.values:
            # For binary operations like 'number * 2'
            if isinstance(value, (AddOp, SubOp, MultOp)):
                if isinstance(value.left, Name) and value.left.id == "number":
                    target_var = node.targets[0].id
                    print(f"  'number' is used in assignment to: {target_var}")

print("\nExercise: Can you trace where 'result' ends up? (Hint: look for Return nodes)\n")


print("=" * 70)
print("LESSON 4: Parse a Table Constructor")
print("=" * 70)

lua_code_4 = """
function make_person(name, age)
    return {
        name = name,
        age = age,
        is_adult = age >= 18
    }
end
"""

tree = ast.parse(lua_code_4)

print("Analyzing table structure...")

for node in ast.walk(tree):
    if isinstance(node, Return):
        return_value = node.values[0]
        if isinstance(return_value, Table):
            print("  Return value is a table with fields:")
            for field in return_value.fields:
                # Field has 'key' and 'value'
                if field.key and isinstance(field.key, Name):
                    key_name = field.key.id

                    # Figure out what the value is
                    if isinstance(field.value, Name):
                        val_desc = f"variable '{field.value.id}'"
                    elif isinstance(field.value, Number):
                        val_desc = f"number {field.value.n}"
                    elif isinstance(field.value, String):
                        val_desc = f"string \"{field.value.s}\""
                    else:
                        val_desc = f"expression ({field.value.__class__.__name__})"

                    print(f"    {key_name} = {val_desc}")

print("\nExercise: Which table fields come from function parameters?\n")


print("=" * 70)
print("LESSON 5: Array-Style Tables (Like EZOP Uses)")
print("=" * 70)

lua_code_5 = """
function make_config(target, distance, callback)
    return {
        target,
        distance,
        { callback, distance * 2 }
    }
end
"""

tree = ast.parse(lua_code_5)

print("Tracing parameters through array-style table...")

def describe_value(value, indent=0):
    """Helper to describe a value"""
    prefix = "  " * indent
    if isinstance(value, Name):
        return f"{prefix}Variable: {value.id}"
    elif isinstance(value, Number):
        return f"{prefix}Number: {value.n}"
    elif isinstance(value, String):
        return f"{prefix}String: \"{value.s}\""
    elif isinstance(value, Table):
        result = f"{prefix}Nested table:\n"
        for i, field in enumerate(value.fields, start=1):
            result += f"{prefix}  [{i}] " + describe_value(field.value, 0) + "\n"
        return result.rstrip()
    elif isinstance(value, (AddOp, SubOp, MultOp)):
        return f"{prefix}Expression: {value.__class__.__name__}"
    else:
        return f"{prefix}Other: {value.__class__.__name__}"

for node in ast.walk(tree):
    if isinstance(node, Return):
        return_value = node.values[0]
        if isinstance(return_value, Table):
            print("Return table structure:")
            for i, field in enumerate(return_value.fields, start=1):
                print(f"  [{i}] {describe_value(field.value)}")

print("\nExercise: Can you find all positions where 'distance' appears?\n")


print("=" * 70)
print("LESSON 6: Putting It Together - Full Trace")
print("=" * 70)

lua_code_6 = """
function process_data(input, multiplier)
    local temp = input * multiplier
    local result = {
        temp,
        multiplier,
        { input, temp }
    }
    return result
end
"""

def trace_parameter_full(tree, param_name):
    """Complete trace of a parameter through the function"""
    print(f"\nFull trace of parameter '{param_name}':")

    # Find the function
    func_node = None
    for node in ast.walk(tree):
        if isinstance(node, Function):
            func_node = node
            break

    if not func_node:
        print("  ERROR: Could not find function")
        return

    # Check if it's a parameter
    param_names = [p.id for p in func_node.args]
    if param_name in param_names:
        print(f"  ✓ '{param_name}' is parameter #{param_names.index(param_name) + 1}")
    else:
        print(f"  ✗ '{param_name}' is NOT a parameter")
        return

    # Track assignments
    aliases = {param_name}  # Start with the parameter name itself

    for node in ast.walk(func_node):
        if isinstance(node, LocalAssign):
            # Check if our parameter is used in the value
            for value in node.values:
                if isinstance(value, Name) and value.id in aliases:
                    # Found direct assignment: local x = param
                    new_var = node.targets[0].id
                    aliases.add(new_var)
                    print(f"  → Assigned to local variable '{new_var}'")
                elif isinstance(value, (MultOp, AddOp, SubOp)):
                    # Check if parameter is in an expression
                    if isinstance(value.left, Name) and value.left.id in aliases:
                        new_var = node.targets[0].id
                        print(f"  → Used in expression, result stored in '{new_var}'")
                    elif isinstance(value.right, Name) and value.right.id in aliases:
                        new_var = node.targets[0].id
                        print(f"  → Used in expression, result stored in '{new_var}'")

    # Find in return table
    def search_in_table(table, path="return"):
        """Recursively search table for our parameter or its aliases"""
        if not isinstance(table, Table):
            return

        for i, field in enumerate(table.fields, start=1):
            current_path = f"{path}[{i}]"

            if isinstance(field.value, Name) and field.value.id in aliases:
                print(f"  → Found at position: {current_path}")

            if isinstance(field.value, Table):
                search_in_table(field.value, current_path)

    # Find return statement
    for node in ast.walk(func_node):
        if isinstance(node, Return) and node.values:
            return_val = node.values[0]
            if isinstance(return_val, Name) and return_val.id in aliases:
                print(f"  → Returned directly")
            elif isinstance(return_val, Table):
                search_in_table(return_val)

tree = ast.parse(lua_code_6)

trace_parameter_full(tree, "input")
trace_parameter_full(tree, "multiplier")

print("\n" + "=" * 70)
print("EXERCISES FOR YOU:")
print("=" * 70)
print("""
1. Modify trace_parameter_full() to handle more expression types
   (What about function calls? Comparisons?)

2. Create a function that finds ALL parameters and traces them automatically

3. Try parsing one of the simpler EZOP_SetAct functions and trace its args

4. Build a function that compares multiple functions to find common patterns
   (e.g., "position [1] is always the operation type")

5. Parse EZOP_OpFunc.lua and find all uses of arg_table[N]

Start with #1 or #2, then work your way up to the EZOP code!
""")

print("=" * 70)
print("HINT: To experiment, just modify this file and run it again!")
print("=" * 70)
