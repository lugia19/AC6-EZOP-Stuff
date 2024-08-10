Let's start from the basics. When the AI needs to make a decision, it will build out a table.
The keys in this table are "Action IDs", which correspond to actions defined later in the file, and the values indicate how likely it is that the AI will perform that action.

Let's take an example action, a very simple one, where the AI just approaches.
NOTE: A lot of code variables/args have been renamed to make the logic clearer - a raw decomp would not have these names.

```lua
[201] = function(ai, f18_arg1)
    local EZOP_array = EZOPArray.new()
    ai:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
    local UNK_FLOAT = 1.3
    local target = TARGET_ENE_0
    local turn_target_type = AI_TURN_TARGET_TYPE_TARGET_DIRECTION
    local movement_type = EZOP_MOVETYPE._BOOST
    local final_dist_to_target = 65
    local actions_to_take_once_close = {EZOP_MakeAtkOp_NpcAcShoot(target, AI_WEAPON_PLACE_LeftHand, 0, 0, 0, 1, -1),
                EZOP_MakeAtkOp_NpcAcShoot(target, AI_WEAPON_PLACE_RightHand, 0, 2, 0, 0.04, -1)}

    local interrupt_setup = function(ai)
        EZOP_UseInterrupt(ai, INTERUPT_DangerousBullet)
    end

    local interrupt_handlers = { f0_local11, f0_local10 }
    local UNK_BOOL = true
    EZOP_array:Add(EZOP_SetAct_ApproachTarget(ai, UNK_FLOAT, target, turn_target_type, movement_type, final_dist_to_target,
        actions_to_take_once_close, interrupt_setup, interrupt_handlers, TransAct, UNK_BOOL))
    return EZOP_array
end
```
As you can see, it sets up an EZOP_array (which will contain the actions to perform).
It then adds EZOP_SetAct_ApproachTarget to it. Let's break down each variable present here.
UNK_FLOAT - no idea.
target - the target.
turn-target_type - seems to correlate to lock-on in some way, but I've never seen it be anything except AI_TURN_TARGET_TYPE_TARGET_DIRECTION
movement_type - self explanatory, the movement type used to approach. Boost, quickboost, assaultboost, walking, etc.
final_dist_to_target - how far from the target we want to be at the end
actions_to_take_once_close - this one is special. This is what actions the AI will perform once the condition (aka, being closer than final_dist_to_target) is met.
If it's empty, then it will do nothing, but if there are more than one, it SEEMS TO PERFORM THEM IN ORDER. SEE LATER.
interrupt_setup - this basically tells the AI to set up interrupts when the DangerousBullet interrupt is fired. That means, stop your movement if you detect a dangerous bullet.
interrupt_handlers - these are the AI's functions that handle interrupts. They're always the same for a given AI file, so they can just be copied from other actions.
UNK_BOOL - well... no idea.

Now, let's drill one layer deeper - EZOP_SetAct_ApproachTarget is defined in EZOP_SetAct.lua. These are basically helper functions, that wrap multiple EZOP actions.

```lua
function EZOP_SetAct_ApproachTarget(ai, unk_float_arg, target, turn_target_type, movement_type, desired_target_distance, run_on_end, interrupt_setup_func, interrupt_handlers, trans_act_arg, unk_bool_arg, f3_arg11, f3_arg12)
    if f3_arg11 == nil then
        f3_arg11 = "next"
    end
    local f3_local0 = nil
    if f3_arg12 == true then
        f3_local0 = f3_arg11
    end
    return { EZOP_OPERATION.MOVE_APPROACH, unk_float_arg, { run_on_end, unk_float_arg, target, movement_type, turn_target_type, desired_target_distance, interrupt_setup_func, interrupt_handlers, true }, { { f3_arg11, EZOP_OpEndChk_CloserThan, { target, desired_target_distance, EZOP_ARRIVE_JUDGE_TYPE._CapsuleToCapsule } }, { f3_local0 } }, true, { trans_act_arg, unk_bool_arg } }
end
```
A lot of these arguments are what you've seen before.
f3_arg11 and f3_arg12 I have absolutely no idea what they do.
run_on_end is actions_to_take_once_close.

What's important here is mostly how the return object is constructed. Let's break it down.
```lua
{ 
    EZOP_OPERATION.MOVE_APPROACH,
    unk_float_arg,
    {
        run_on_end,
        unk_float_arg,
        target,
        movement_type,
        turn_target_type,
        desired_target_distance,
        interrupt_setup_func,
        interrupt_handlers,
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
        trans_act_arg,
        unk_bool_arg
    }
}
```

SECTION ONE:
EZOP_OPERATION.MOVE_APPROACH indicates a specific EZOP operation. These are composed of various "Layers", meaning multiple smaller actions.
No idea what unk_float_arg is/does.

The table right after it is the table that will be passed as an argument to EACH of the functions that compose the specified EZOP operation.

Here's the EZOP operation for MOVE_APPROACH:
```lua
[EZOP_OPERATION.MOVE_APPROACH] = {
	[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_ApproachTarget },
	[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
	[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
	[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
	[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
	[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
	[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
	[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
}
```
I'll only be looking at EZOP_OpFunc_ApproachTarget as an example, but each of these functions recieves the argument table as its last argument.
EZOP_OpFunc_ApproachTarget seems to basically just handle TURNING towards the target.

```lua
function EZOP_OpFunc_ApproachTarget(ai, f45_arg1, f45_arg2, arg_table)
    local unk_float_arg = arg_table[2]
    local target = arg_table[3]
    local movement_type = arg_table[4]
    local turn_target_type = arg_table[5]
    local desired_target_distance = arg_table[6]
    local interrupt_setup_func = arg_table[7]
    local interrupt_handlers = arg_table[8]
    local UNK_BOOL = arg_table[9]
    if type(interrupt_setup_func) == "function" then
        interrupt_setup_func(ai)
    end
    EZOP_SetUpActUniqueInterruptFunc(ai, interrupt_handlers)
    turn_to_target(ai, target, turn_target_type)
    if UNK_BOOL == true then
        ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepDistance, target, 0, 0, 0, 0, 50)
    else
        local f45_local8 = 0
        local f45_local9 = target
        local f45_local10 = 0
        local f45_local11 = 0
        local f45_local12 = 0
        local f45_local13 = 0
        ai:SetupOperationLocal(AI_OPERATION_KeepDistance, f45_local8, f45_local9, f45_local10, f45_local11, f45_local12,
            f45_local13, true)
    end
end
```
f45_arg1 and f45_arg2 are both unused, so I don't know what they might be. What we care about is arg_table.
As you can see, it is a table with 9 values, which are the ones specified earlier in EZOP_SetAct_ApproachTarget's return function.

turn_to_target is the function that ACTUALLY handles turning towards the target.

Going back to the EZOP operation table earlier, EZOP_OpFunc_MoveType is the next function to be called, which is the one that actually handles movement.
Nothing really to see here, it just does all the movement stuff.


The next interesting ones are EZOP_OpFunc_TriggerOperation01-04. These actually all call the same function, just with a different argument.
Remember that all the way back in the action, we set the actions to take to this table:
{EZOP_MakeAtkOp_NpcAcShoot(target, AI_WEAPON_PLACE_LeftHand, 0, 0, 0, 1, -1), EZOP_MakeAtkOp_NpcAcShoot(target, AI_WEAPON_PLACE_RightHand, 0, 2, 0, 0.04, -1)}

These MakeAtkOp functions basically return a table based on the values passed. Here's what the EZOP_MakeAtkOp_NpcAcShoot looks like:
```lua
function EZOP_MakeAtkOp_NpcAcShoot(target, weapon_slot, f28_arg2, f28_arg3, f28_arg4, f28_arg5, f28_arg6)
    -- The table here uses 0 indexing, which is not the default in LUA, and isn't used in most other places, so you gotta keep that in mind.
    -- FUN!
    return {
        [0] = "NpcAc",
        [1] = 99,
        [2] = target,
        [3] = weapon_slot,
        [4] = actions_table._Shoot,
        [5] = f28_arg2,
        [6] = -1,
        [7] = f28_arg3,
        [8] = f28_arg5,
        [9] = AI_TRIGGER_INPUT_TYPE_CHARGE,
        [10] = f28_arg6,
        [11] = 0,
        [12] = -1,
        [13] = f28_arg4
    }
end
```
A lot of these arguments I have no idea what they do, to be honest, they're just values that change.

And now that you have all that context, here is the code for EZOP_OpFunc_TriggerOperation (a cleaned up version):
```lua
local local_EZOP_OpFunc_TriggerOperation = function(ai, args_table, trigger_op_index)
    if args_table[1] == nil then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    elseif args_table[1][trigger_op_index] == nil then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    else
        local action_to_perform = args_table[1][trigger_op_index]
        local action_type = action_to_perform[0]
        local unk_float_arg = args_table[2]    --Remember! This isn't the action, but the table defined in EZOP_SetAct_ApproachTarget for EZOP_OPERATION.MOVE_APPROACH!
        local target = action_to_perform[2]
        local weapon_slot = action_to_perform[3]
        local weapon_action = action_to_perform[4]
        local f33_local6 = action_to_perform[5]
        local f33_local7 = action_to_perform[6]
        local f33_local8 = action_to_perform[7]
        local f33_local9 = action_to_perform[8]
        local ai_trigger_input_type = action_to_perform[9]  --This basically distinguishes between charging vs holding vs pressing once.
        local f33_local11 = action_to_perform[10]
        local f33_local12 = action_to_perform[11]
        local f33_local13 = action_to_perform[12]
        if action_type == "NpcAc" then
            local f33_local14 = action_to_perform[13]
            ai:SetupOperationLocal(AI_OPERATION_NpcAc_Weapon_Ver100, target, weapon_slot, weapon_action, unk_float_arg,
                f33_local6, f33_local7, f33_local8, f33_local9, ai_trigger_input_type, f33_local11, f33_local12, f33_local13,
                f33_local14)
        elseif action_type == "NpcAc_WepChange" then
            ai:ChangeWeapon(weapon_slot)
        elseif action_type == "NpcAc_WepChargeCancel" then
            ai:CancelChargeWeapon(weapon_slot)
        elseif action_type == "NpcAc_WepPurge" then
            ai:PurgeWeapon(weapon_slot)
        else
            ai:SetupOperationLocal(AI_OPERATION_Weapon_Ver102, target, weapon_slot, weapon_action, unk_float_arg, f33_local6,
                f33_local7, f33_local8, f33_local9, ai_trigger_input_type, f33_local11, f33_local12, f33_local13)
        end
    end
end
```

Like I said, a lot of these values I have no clue about. But the important ones are there.
I can't go any deeper than this because I'm pretty sure the ai object itself is a C object, so not present in LUA.



SECTION TWO
Yeah, we're going all the way back up to EZOP_SetAct_ApproachTarget and the table it returns.
Don't worry, this is much simpler. Next, we're focusing on EZOP_OpEndChk_CloserThan.
This defines which function is used to check when to _end_ the Action. Since this action is meant to make the AI approach, we check if the AI is close enough.
Here is its code, found in EZOP_OpEndChk.lua:
```lua
function EZOP_OpEndChk_CloserThan(ai, f9_arg1, args_table)
    local target = nil
    if type(args_table[1]) == "table" then
        target = args_table[1][1]
    else
        target = args_table[1]
    end
    local distance_arg = args_table[2]
    local arrive_judge_type = args_table[3]
    return EZOP_LocalOpFunc_GetDist(ai, target, arrive_judge_type, false) < distance_arg
end
```
On the whole, pretty straightforward. args_table in this case is the smaller table consisting of 3 values that's next to EZOP_OpEndChk_CloserThan.

Here is EZOP_LocalOpFunc_GetDist:
```lua
function EZOP_LocalOpFunc_GetDist(ai, target, arrive_judge_type, only_xz_dist)
    if only_xz_dist == nil or only_xz_dist == false then
        if arrive_judge_type == EZOP_ARRIVE_JUDGE_TYPE._CapsuleToCapsule then
            return ai:GetDist(target)
        elseif arrive_judge_type == EZOP_ARRIVE_JUDGE_TYPE._Orrigin then
            return ai:GetOriginDist(target)
        else
            return ai:GetDist(target)
        end
    else
        return ai:GetDistXZ(target)
    end
end
```

As for all the other values in the table returned by EZOP_SetAct_ApproachTarget... I have no idea.



In short, here's the approach I take to documenting the EZOP_SetAct functions:
-Document those arguments I can udnerstand from how they're _used_ in the AI scripts (eg, target, ai, and so on)
-If there are any arguments I can't figure out:
    -Get the EZOP_OPERATION from the SetAct return value (and the arguments sent to it)
    -Check EZOP_OPERATION_SET_FORMATTED to see the various layers
    -Figure out what all the arguments are from there
    