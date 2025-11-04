#!/usr/bin/env python3
"""
Demo: Parsing Lua EZOP functions with AST
Shows how to navigate the Abstract Syntax Tree to trace arguments
"""

from luaparser import ast
from luaparser.astnodes import *

# The actual function from EZOP_SetAct.lua
lua_code = """
function EZOP_SetAct_ApproachTarget(ai, max_action_duration, target, turn_target_type, movement_type,
                                    desired_target_distance,
                                    run_on_end, InterruptSetupFunc_arg, InterruptFunc_arg, TransAct_arg, unk_bool_arg,
                                    f3_arg11, f3_arg12)
    if f3_arg11 == nil then
        f3_arg11 = "next"
    end
    local f3_local0 = nil
    if f3_arg12 == true then
        f3_local0 = f3_arg11
    end
    return {
        EZOP_OPERATION.MOVE_APPROACH,
        max_action_duration,
        {
            run_on_end,
            max_action_duration,
            target,
            movement_type,
            turn_target_type,
            desired_target_distance,
            InterruptSetupFunc_arg,
            InterruptFunc_arg,
            true
        },
        {
            {
                f3_arg11,
                EZOP_OpEndChk_CloserThan,
                {
                    target,
                    desired_target_distance,
                    EZOP_ARRIVE_JUDGE_TYPE._CapsuleToCapsule
                }
            },
            {
                f3_local0
            }
        },
        true,
        {
            TransAct_arg,
            unk_bool_arg
        }
    }
end
"""

def print_ast_tree(node, indent=0, name="ROOT"):
    """Recursively print the AST structure"""
    indent_str = "  " * indent
    node_type = node.__class__.__name__

    # Try to get a useful representation
    value = ""
    if isinstance(node, Name):
        value = f" '{node.id}'"
    elif isinstance(node, Number):
        value = f" = {node.n}"
    elif isinstance(node, String):
        value = f' = "{node.s}"'
    elif isinstance(node, Index):
        value = f" .{node.idx.id if hasattr(node.idx, 'id') else '?'}"

    print(f"{indent_str}{name}: {node_type}{value}")

    # Recursively print children (simplified - not all node types)
    if hasattr(node, 'body') and node.body:
        if isinstance(node.body, list):
            for i, child in enumerate(node.body):
                print_ast_tree(child, indent+1, f"body[{i}]")
        else:
            print_ast_tree(node.body, indent+1, "body")

    if isinstance(node, Function):
        print(f"{indent_str}  Parameters: {[p.id for p in node.args]}")
        if node.body:
            for i, stmt in enumerate(node.body.body):
                print_ast_tree(stmt, indent+1, f"statement[{i}]")

    if isinstance(node, Return) and node.values:
        for i, val in enumerate(node.values):
            print_ast_tree(val, indent+1, f"return_value[{i}]")

    if isinstance(node, Table) and node.fields:
        for i, field in enumerate(node.fields):
            print_ast_tree(field, indent+1, f"table[{i}]")

    if isinstance(node, Field):
        if node.key:
            print_ast_tree(node.key, indent+1, "key")
        if node.value:
            print_ast_tree(node.value, indent+1, "value")


def trace_argument(tree, param_name):
    """Trace where a specific argument goes in the return statement"""
    print(f"\n{'='*60}")
    print(f"TRACING ARGUMENT: {param_name}")
    print('='*60)

    # Find the function
    function_node = None
    for node in ast.walk(tree):
        if isinstance(node, Function):
            function_node = node
            break

    if not function_node:
        print("Could not find function!")
        return

    # Find return statement
    return_node = None
    for node in ast.walk(function_node):
        if isinstance(node, Return):
            return_node = node
            break

    if not return_node or not return_node.values:
        print("Could not find return statement!")
        return

    # The return value should be a table
    return_table = return_node.values[0]

    if not isinstance(return_table, Table):
        print("Return value is not a table!")
        return

    # Search for the parameter in the return table
    positions = []

    def search_table(table, path="return"):
        """Recursively search for the parameter name in tables"""
        if not isinstance(table, Table):
            return

        for i, field in enumerate(table.fields, start=1):
            current_path = f"{path}[{i}]"

            # Check the field value
            if isinstance(field.value, Name) and field.value.id == param_name:
                positions.append(current_path)

            # If the value is another table, recurse
            if isinstance(field.value, Table):
                search_table(field.value, current_path)

    search_table(return_table)

    if positions:
        print(f"\nFound '{param_name}' at positions:")
        for pos in positions:
            print(f"  - {pos}")
    else:
        print(f"\n'{param_name}' not found in return table")

    return positions


def analyze_return_structure(tree):
    """Analyze the return table structure"""
    print(f"\n{'='*60}")
    print("RETURN TABLE STRUCTURE")
    print('='*60)

    function_node = None
    for node in ast.walk(tree):
        if isinstance(node, Function):
            function_node = node
            break

    return_node = None
    for node in ast.walk(function_node):
        if isinstance(node, Return):
            return_node = node
            break

    if not return_node or not return_node.values:
        return

    return_table = return_node.values[0]

    if not isinstance(return_table, Table):
        return

    def describe_value(value, indent=0):
        indent_str = "  " * indent
        if isinstance(value, Name):
            return f"{indent_str}Variable: {value.id}"
        elif isinstance(value, Number):
            return f"{indent_str}Number: {value.n}"
        elif isinstance(value, String):
            return f"{indent_str}String: \"{value.s}\""
        elif isinstance(value, Index):
            obj = value.value.id if isinstance(value.value, Name) else "?"
            idx = value.idx.id if isinstance(value.idx, Name) else "?"
            return f"{indent_str}Index: {obj}.{idx}"
        elif isinstance(value, Table):
            result = f"{indent_str}Table:\n"
            for i, field in enumerate(value.fields, start=1):
                result += f"{indent_str}  [{i}] " + describe_value(field.value, 0) + "\n"
            return result.rstrip()
        elif isinstance(value, bool):
            return f"{indent_str}Boolean: {value}"
        else:
            return f"{indent_str}Unknown: {value.__class__.__name__}"

    print("\nReturn table structure:")
    for i, field in enumerate(return_table.fields, start=1):
        print(f"[{i}] {describe_value(field.value)}")


# Parse the code
print("Parsing Lua code...")
tree = ast.parse(lua_code)

print("\n" + "="*60)
print("FULL AST STRUCTURE (abbreviated)")
print("="*60)
print_ast_tree(tree)

# Analyze return structure
analyze_return_structure(tree)

# Trace specific arguments
trace_argument(tree, "target")
trace_argument(tree, "run_on_end")
trace_argument(tree, "f3_arg11")
trace_argument(tree, "TransAct_arg")

print("\n" + "="*60)
print("DONE!")
print("="*60)
