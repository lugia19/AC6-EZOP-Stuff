#!/usr/bin/env python3
"""
Basic AST Parsing Examples - Learn the Fundamentals

This script shows you how to:
1. Parse Lua code into an AST
2. Navigate the tree structure
3. Extract useful information
4. Search for specific patterns

Play with this code! Modify it, break it, experiment!
"""

from luaparser import ast
from luaparser.astnodes import *


# Read the example Lua file
with open('example.lua', 'r') as f:
    lua_code = f.read()

print("="*70)
print("PARSING LUA CODE")
print("="*70)

# Parse the code into an Abstract Syntax Tree
tree = ast.parse(lua_code)
print("✓ Successfully parsed example.lua into an AST\n")


print("="*70)
print("EXAMPLE 1: List All Functions")
print("="*70)

def list_all_functions(tree):
    """Find all function definitions in the code"""
    functions = []

    for node in ast.walk(tree):
        if isinstance(node, Function):
            func_name = node.name.id if node.name else "<anonymous>"
            param_names = [p.id for p in node.args]
            functions.append({
                'name': func_name,
                'params': param_names,
                'param_count': len(param_names),
                'node': node
            })

    return functions

functions = list_all_functions(tree)

print(f"Found {len(functions)} functions:\n")
for func in functions:
    params_str = ", ".join(func['params'])
    print(f"  function {func['name']}({params_str})")

print("\n")


print("="*70)
print("EXAMPLE 2: Analyze a Specific Function")
print("="*70)

def analyze_function(func_name, tree):
    """Deep dive into a specific function"""
    print(f"Analyzing function: {func_name}\n")

    # Find the function
    func_node = None
    for node in ast.walk(tree):
        if isinstance(node, Function) and node.name and node.name.id == func_name:
            func_node = node
            break

    if not func_node:
        print(f"  ERROR: Function '{func_name}' not found!")
        return

    # Parameters
    params = [p.id for p in func_node.args]
    print(f"  Parameters: {params}")

    # Count local variables
    local_vars = []
    for node in ast.walk(func_node):
        if isinstance(node, LocalAssign):
            for target in node.targets:
                if isinstance(target, Name):
                    local_vars.append(target.id)

    print(f"  Local variables: {local_vars}")

    # Check what it returns
    return_nodes = []
    for node in ast.walk(func_node):
        if isinstance(node, Return):
            return_nodes.append(node)

    print(f"  Return statements: {len(return_nodes)}")

    if return_nodes:
        ret = return_nodes[0]
        print(f"  Returns {len(ret.values)} value(s)")

        for i, val in enumerate(ret.values, start=1):
            if isinstance(val, Name):
                print(f"    [{i}] Variable: {val.id}")
            elif isinstance(val, Number):
                print(f"    [{i}] Number: {val.n}")
            elif isinstance(val, Table):
                print(f"    [{i}] Table with {len(val.fields)} fields")
            else:
                print(f"    [{i}] {val.__class__.__name__}")

# Analyze a few functions
analyze_function("add", tree)
print()
analyze_function("calculate_circle", tree)
print("\n")


print("="*70)
print("EXAMPLE 3: Trace a Parameter")
print("="*70)

def trace_parameter(func_name, param_name, tree):
    """Follow a parameter through the function to see where it goes"""
    print(f"Tracing '{param_name}' in function '{func_name}':\n")

    # Find the function
    func_node = None
    for node in ast.walk(tree):
        if isinstance(node, Function) and node.name and node.name.id == func_name:
            func_node = node
            break

    if not func_node:
        print("  Function not found!")
        return

    # Check if it's a parameter
    param_names = [p.id for p in func_node.args]
    if param_name not in param_names:
        print(f"  '{param_name}' is not a parameter of this function")
        return

    print(f"  ✓ '{param_name}' is parameter #{param_names.index(param_name) + 1}")

    # Track where it's used
    usages = []

    # Check in assignments
    for node in ast.walk(func_node):
        if isinstance(node, LocalAssign):
            for value in node.values:
                # Direct assignment: local x = param
                if isinstance(value, Name) and value.id == param_name:
                    var = node.targets[0].id
                    usages.append(f"Assigned to local '{var}'")

                # Used in operation: local x = param * 2
                elif isinstance(value, (AddOp, SubOp, MultOp)):
                    if isinstance(value.left, Name) and value.left.id == param_name:
                        var = node.targets[0].id
                        usages.append(f"Used in calculation → '{var}'")
                    elif isinstance(value.right, Name) and value.right.id == param_name:
                        var = node.targets[0].id
                        usages.append(f"Used in calculation → '{var}'")

    # Check in return statement
    for node in ast.walk(func_node):
        if isinstance(node, Return):
            for val in node.values:
                if isinstance(val, Name) and val.id == param_name:
                    usages.append("Returned directly")
                elif isinstance(val, Table):
                    # Check if param is in the table
                    for field in val.fields:
                        if isinstance(field.value, Name) and field.value.id == param_name:
                            if field.key:
                                usages.append(f"Returned in table field '{field.key.id}'")
                            else:
                                usages.append("Returned in table (array position)")

    if usages:
        for usage in usages:
            print(f"  → {usage}")
    else:
        print("  (No direct usages found)")

trace_parameter("add", "a", tree)
print()
trace_parameter("calculate_circle", "radius", tree)
print()
trace_parameter("make_person", "name", tree)
print("\n")


print("="*70)
print("EXAMPLE 4: Understand Table Structure")
print("="*70)

def analyze_table(func_name, tree):
    """Show what's inside a returned table"""
    print(f"Analyzing table returned by '{func_name}':\n")

    # Find the function
    func_node = None
    for node in ast.walk(tree):
        if isinstance(node, Function) and node.name and node.name.id == func_name:
            func_node = node
            break

    if not func_node:
        print("  Function not found!")
        return

    # Find return statement
    for node in ast.walk(func_node):
        if isinstance(node, Return):
            if node.values and isinstance(node.values[0], Table):
                table = node.values[0]

                print(f"  Table has {len(table.fields)} fields:\n")

                for i, field in enumerate(table.fields, start=1):
                    # Figure out the key
                    if field.key:
                        if isinstance(field.key, Name):
                            key = field.key.id
                        elif isinstance(field.key, Number):
                            key = f"[{field.key.n}]"
                        else:
                            key = "[key]"
                    else:
                        key = f"[{i}]"  # Array-style, no explicit key

                    # Figure out the value
                    val = field.value
                    if isinstance(val, Name):
                        val_str = f"variable '{val.id}'"
                    elif isinstance(val, Number):
                        val_str = f"number {val.n}"
                    elif isinstance(val, String):
                        val_str = f'string "{val.s}"'
                    elif isinstance(val, Table):
                        val_str = f"nested table ({len(val.fields)} fields)"
                    elif isinstance(val, (AddOp, SubOp, MultOp)):
                        val_str = "calculated expression"
                    elif isinstance(val, (LtOp, LtEqOp, GtOp, GtEqOp)):
                        val_str = "comparison expression"
                    else:
                        val_str = val.__class__.__name__

                    print(f"    {key} = {val_str}")

                break

analyze_table("make_person", tree)
print()
analyze_table("make_point", tree)
print()
analyze_table("make_config", tree)
print("\n")


print("="*70)
print("EXAMPLE 5: Find Patterns")
print("="*70)

print("Finding all arithmetic operations:\n")

def find_arithmetic(tree):
    """Find all places where math is happening"""
    operations = []

    for node in ast.walk(tree):
        if isinstance(node, AddOp):
            operations.append(("addition", node))
        elif isinstance(node, SubOp):
            operations.append(("subtraction", node))
        elif isinstance(node, MultOp):
            operations.append(("multiplication", node))

    return operations

ops = find_arithmetic(tree)
print(f"  Found {len(ops)} arithmetic operations:")

op_counts = {}
for op_type, node in ops:
    op_counts[op_type] = op_counts.get(op_type, 0) + 1

for op_type, count in op_counts.items():
    print(f"    {op_type}: {count}")

print("\n")


print("="*70)
print("EXPERIMENT IDEAS")
print("="*70)
print("""
Now try modifying this script! Here are some ideas:

1. Write a function that finds all 'if' statements
   Hint: Look for 'If' nodes

2. Count how many times each parameter is used in a function
   Hint: Count Name nodes that match the parameter

3. Find all functions that return tables
   Hint: Check if Return node contains a Table

4. Build a call graph (which functions call other functions)
   Hint: Look for Call nodes

5. Find variables that are assigned but never used
   Hint: Track LocalAssign targets and look for Name usages

6. Pretty-print a function's structure (parameters → locals → return)

7. Find the most complex function (most local variables? most operations?)

Try editing example.lua too! Add new functions and see if your code works.
""")

print("="*70)
print("NEXT STEPS")
print("="*70)
print("""
Once you're comfortable with these basics:
- Open ast_tutorial.py for more advanced patterns
- Try parsing one of the simple EZOP_SetAct functions
- Start thinking about how to trace arguments across function calls

Happy hacking!
""")
