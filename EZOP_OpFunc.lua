local f0_local0 = function(ai, f1_arg1, f1_arg2)

end

local f0_local1 = function(ai, f2_arg1, f2_arg2)
    if f2_arg1[1] == nil then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    elseif f2_arg1[1][f2_arg2] == nil then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    else
        local f2_local0 = f2_arg1[1][f2_arg2]
        local f2_local1 = f2_local0[1]
        local f2_local2 = f2_local0[2]
        local f2_local3 = f2_local0[3]
        local f2_local4 = f2_local0[4]
        local f2_local5 = f2_local0[5]
        local f2_local6 = f2_local0[6]
        local f2_local7 = f2_local0[7]
        local f2_local8 = f2_local0[8]
        local f2_local9 = f2_local0[9]
        ai:SetupOperationLocal(AI_OPERATION_Weapon_Ver100, f2_local2, f2_local3, f2_local1, f2_local4, f2_local5,
            f2_local6, f2_local7, f2_local8, f2_local9)
    end
end

local f0_local2 = function(ai, f3_arg1, f3_arg2)
    if f3_arg1[1] == nil then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    elseif f3_arg1[1][f3_arg2] == nil then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    else
        local f3_local0 = f3_arg1[1][f3_arg2]
        local f3_local1 = f3_local0[1]
        local f3_local2 = f3_local0[2]
        local f3_local3 = f3_local0[3]
        local f3_local4 = f3_local0[4]
        local f3_local5 = f3_local0[5]
        local f3_local6 = f3_local0[6]
        local f3_local7 = f3_local0[7]
        local f3_local8 = f3_local0[8]
        local f3_local9 = f3_local0[9]
        local f3_local10 = f3_local0[10]
        local f3_local11 = f3_local0[11]
        local f3_local12 = f3_local0[12]
        ai:SetupOperationLocal(AI_OPERATION_Weapon_Ver102, f3_local2, f3_local3, f3_local4, f3_local1, f3_local5,
            f3_local6, f3_local7, f3_local8, f3_local9, f3_local10, f3_local11, f3_local12)
    end
end

function EZOP_MakeAtkOp_Shoot00(ai, f4_arg1, f4_arg2, f4_arg3, f4_arg4, f4_arg5)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f4_arg1,
        [4] = 0,
        [5] = f4_arg2,
        [6] = -1,
        [7] = f4_arg3,
        [8] = f4_arg4,
        [9] =
            AI_TRIGGER_INPUT_TYPE_HOLD,
        [10] = f4_arg5,
        [11] = 0,
        [12] = -1
    }
end

local actions_table = { _Shoot = 0, _GuardShoot = 1, _ChargeShoot = 2, _GuardChargeShoot = 3, _ChargeAimStanceOn = 5, _ChargeAimStanceOff = 6, _AimStanceOn = 10, _AimStanceOff = 11, _GuardAimStanceOn = 15, _GuardAimStanceOff = 16, _GuardChargeAimStanceOn = 17, _GuardChargeAimStanceOff = 18, _Reload = 20, _WepChange = 30 }

function EZOP_MakeAtkOp_Shoot(ai, f5_arg1, f5_arg2, f5_arg3, f5_arg4, f5_arg5)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f5_arg1,
        [4] = actions_table._Shoot,
        [5] = f5_arg2,
        [6] = -1,
        [7] = f5_arg3,
        [8] =
            f5_arg4,
        [9] = AI_TRIGGER_INPUT_TYPE_HOLD,
        [10] = f5_arg5,
        [11] = 0,
        [12] = -1
    }
end

function EZOP_MakeAtkOp_ShootWithTag(ai, f6_arg1, f6_arg2, f6_arg3, f6_arg4, f6_arg5, f6_arg6)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f6_arg1,
        [4] = f6_arg2,
        [5] = f6_arg3,
        [6] = -1,
        [7] = f6_arg4,
        [8] = f6_arg5,
        [9] =
            AI_TRIGGER_INPUT_TYPE_HOLD,
        [10] = f6_arg6,
        [11] = 0,
        [12] = -1
    }
end

function EZOP_MakeAtkOp_ComboShoot(ai, f7_arg1, f7_arg2, f7_arg3, f7_arg4, f7_arg5)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f7_arg1,
        [4] = actions_table._Shoot,
        [5] = f7_arg2,
        [6] = -1,
        [7] = f7_arg3,
        [8] =
            f7_arg4,
        [9] = AI_TRIGGER_INPUT_TYPE_HOLD,
        [10] = f7_arg5,
        [11] = 1,
        [12] = -1
    }
end

function EZOP_MakeAtkOp_GuardShoot(ai, f8_arg1, f8_arg2, f8_arg3, f8_arg4, f8_arg5)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f8_arg1,
        [4] = actions_table._GuardShoot,
        [5] = f8_arg2,
        [6] = -1,
        [7] = f8_arg3,
        [8] =
            f8_arg4,
        [9] = AI_TRIGGER_INPUT_TYPE_HOLD,
        [10] = f8_arg5,
        [11] = 0,
        [12] = -1
    }
end

function EZOP_MakeAtkOp_ComboGuardShoot(ai, f9_arg1, f9_arg2, f9_arg3, f9_arg4, f9_arg5)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f9_arg1,
        [4] = actions_table._GuardShoot,
        [5] = f9_arg2,
        [6] = -1,
        [7] = f9_arg3,
        [8] =
            f9_arg4,
        [9] = AI_TRIGGER_INPUT_TYPE_HOLD,
        [10] = f9_arg5,
        [11] = 1,
        [12] = -1
    }
end

function EZOP_MakeAtkOp_ChargeShoot(ai, f10_arg1, f10_arg2, f10_arg3, f10_arg4, f10_arg5)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f10_arg1,
        [4] = actions_table._ChargeShoot,
        [5] = f10_arg2,
        [6] = -1,
        [7] = f10_arg3,
        [8] = f10_arg4,
        [9] = AI_TRIGGER_INPUT_TYPE_HOLD,
        [10] = f10_arg5,
        [11] = 0,
        [12] = -1
    }
end

function EZOP_MakeAtkOp_ComboChargeShoot(ai, f11_arg1, f11_arg2, f11_arg3, f11_arg4, f11_arg5)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f11_arg1,
        [4] = actions_table._ChargeShoot,
        [5] = f11_arg2,
        [6] = -1,
        [7] = f11_arg3,
        [8] = f11_arg4,
        [9] = AI_TRIGGER_INPUT_TYPE_HOLD,
        [10] = f11_arg5,
        [11] = 1,
        [12] = -1
    }
end

function EZOP_MakeAtkOp_GuardChargeShoot(ai, f12_arg1, f12_arg2, f12_arg3, f12_arg4, f12_arg5)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f12_arg1,
        [4] = actions_table._GuardChargeShoot,
        [5] = f12_arg2,
        [6] = -1,
        [7] =
            f12_arg3,
        [8] = f12_arg4,
        [9] = AI_TRIGGER_INPUT_TYPE_HOLD,
        [10] = f12_arg5,
        [11] = 0,
        [12] = -1
    }
end

function EZOP_MakeAtkOp_ComboGuardChargeShoot(ai, f13_arg1, f13_arg2, f13_arg3, f13_arg4, f13_arg5)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f13_arg1,
        [4] = actions_table._GuardChargeShoot,
        [5] = f13_arg2,
        [6] = -1,
        [7] =
            f13_arg3,
        [8] = f13_arg4,
        [9] = AI_TRIGGER_INPUT_TYPE_HOLD,
        [10] = f13_arg5,
        [11] = 1,
        [12] = -1
    }
end

function EZOP_MakeAtkOp_AimStanceOn(ai, f14_arg1)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f14_arg1,
        [4] = actions_table._AimStanceOn,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] =
            AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = EZOP_TransitionNotifyIDDef._CommonAttack
    }
end

function EZOP_MakeAtkOp_GuardAimStanceOn(ai, f15_arg1)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f15_arg1,
        [4] = actions_table._GuardAimStanceOn,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] = AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = EZOP_TransitionNotifyIDDef._CommonAttack
    }
end

function EZOP_MakeAtkOp_ChargeAimStanceOn(ai, f16_arg1)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f16_arg1,
        [4] = actions_table._ChargeAimStanceOn,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] = AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = EZOP_TransitionNotifyIDDef._CommonAttack
    }
end

function EZOP_MakeAtkOp_GuardChargeAimStanceOn(ai, f17_arg1)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f17_arg1,
        [4] = actions_table._GuardChargeAimStanceOn,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] = AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = EZOP_TransitionNotifyIDDef._CommonAttack
    }
end

function EZOP_MakeAtkOp_AimStanceOff(ai, f18_arg1)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f18_arg1,
        [4] = actions_table._AimStanceOff,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] = AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = EZOP_TransitionNotifyIDDef._CommonAttack
    }
end

function EZOP_MakeAtkOp_GuardAimStanceOff(ai, f19_arg1)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f19_arg1,
        [4] = actions_table._GuardAimStanceOff,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] = AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = EZOP_TransitionNotifyIDDef._CommonAttack
    }
end

function EZOP_MakeAtkOp_ChargeAimStanceOff(ai, f20_arg1)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f20_arg1,
        [4] = actions_table._ChargeAimStanceOff,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] = AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = EZOP_TransitionNotifyIDDef._CommonAttack
    }
end

function EZOP_MakeAtkOp_GuardChargeAimStanceOff(ai, f21_arg1)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f21_arg1,
        [4] = actions_table._GuardChargeAimStanceOff,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] = AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = EZOP_TransitionNotifyIDDef._CommonAttack
    }
end

function EZOP_MakeAtkOp_Reload(ai, f22_arg1)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f22_arg1,
        [4] = actions_table._Reload,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] =
            AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = EZOP_TransitionNotifyIDDef._CommonAttack
    }
end

function EZOP_MakeAtkOp_WepChange(ai, f23_arg1)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f23_arg1,
        [4] = actions_table._WepChange,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] =
            AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = EZOP_TransitionNotifyIDDef._CommonAttack
    }
end

function EZOP_MakeAtkOp_Melee(ai, f24_arg1, f24_arg2, f24_arg3)
    local f24_local0 = {
        [1] = 99,
        [2] = ai,
        [3] = f24_arg1,
        [4] = f24_arg2,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] =
            AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1
    }
    if f24_arg3 then
        f24_local0[11] = 1
    else
        f24_local0[11] = 0
    end
    f24_local0[12] = EZOP_TransitionNotifyIDDef._CommonAttack
    return f24_local0
end

function EZOP_MakeAtkOp_Guard(ai, f25_arg1, f25_arg2, f25_arg3)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f25_arg1,
        [4] = 0,
        [5] = f25_arg2,
        [6] = f25_arg3,
        [7] = 99,
        [8] = 99,
        [9] =
            AI_TRIGGER_INPUT_TYPE_HOLD,
        [10] = -1,
        [11] = 0,
        [12] = -1
    }
end

function EZOP_MakeAtkOp_PrimalArmorOn(ai, f26_arg1)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f26_arg1,
        [4] = 0,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] =
            AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = -1
    }
end

function EZOP_MakeAtkOp_PrimalArmorOff(ai, f27_arg1)
    return {
        [1] = 99,
        [2] = ai,
        [3] = f27_arg1,
        [4] = 1,
        [5] = 0,
        [6] = 99,
        [7] = -1,
        [8] = 99,
        [9] =
            AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = -1
    }
end

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

function EZOP_MakeAtkOp_NpcAcChargeHold(ai, f29_arg1, f29_arg2, f29_arg3)
    return {
        [0] = "NpcAc",
        [1] = 99,
        [2] = ai,
        [3] = f29_arg1,
        [4] = actions_table._Shoot,
        [5] = f29_arg2,
        [6] = -1,
        [7] = 99,
        [8] = 0,
        [9] = AI_TRIGGER_INPUT_TYPE_HOLD,
        [10] = f29_arg3,
        [11] = 0,
        [12] = -1,
        [13] = -1
    }
end

function EZOP_MakeAtkOp_NpcAcWepChange(ai)
    return {
        [0] = "NpcAc_WepChange",
        [1] = 99,
        [2] = TARGET_ENE_0,
        [3] = ai,
        [4] = actions_table._Shoot,
        [5] = 0,
        [6] = -1,
        [7] = -1,
        [8] = -1,
        [9] = AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = -1,
        [13] = -1
    }
end

function EZOP_MakeAtkOp_NpcAcWepChargeCancel(ai)
    return {
        [0] = "NpcAc_WepChargeCancel",
        [1] = 99,
        [2] = TARGET_SELF,
        [3] = ai,
        [4] = 0,
        [5] = 0,
        [6] = -1,
        [7] = -1,
        [8] = -1,
        [9] = AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = -1,
        [13] = -1
    }
end

function EZOP_MakeAtkOp_NpcAcWepPurge(ai)
    return {
        [0] = "NpcAc_WepPurge",
        [1] = 99,
        [2] = TARGET_ENE_0,
        [3] = ai,
        [4] = actions_table._Shoot,
        [5] = 0,
        [6] = -1,
        [7] = -1,
        [8] = -1,
        [9] = AI_TRIGGER_INPUT_TYPE_ONCE,
        [10] = -1,
        [11] = 0,
        [12] = -1,
        [13] = -1
    }
end

local local_EZOP_OpFunc_TriggerOperation = function(ai, args_table, trigger_op_index)
    if args_table[1] == nil then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    elseif args_table[1][trigger_op_index] == nil then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    else
        local action_to_perform = args_table[1][trigger_op_index]
        local action_type = action_to_perform[0]
        local unk_float_arg = args_table
            [2] --Remember! This isn't the action, but the table defined in EZOP_SetAct_ApproachTarget for EZOP_OPERATION.MOVE_APPROACH!
        local target = action_to_perform[2]
        local weapon_slot = action_to_perform[3]
        local weapon_action = action_to_perform[4]
        local f33_local6 = action_to_perform[5]
        local f33_local7 = action_to_perform[6]
        local f33_local8 = action_to_perform[7]
        local f33_local9 = action_to_perform[8]
        local ai_trigger_input_type = action_to_perform
            [9] --This basically distinguishes between charging vs holding vs pressing once.
        local f33_local11 = action_to_perform[10]
        local f33_local12 = action_to_perform[11]
        local f33_local13 = action_to_perform[12]
        if action_type == "NpcAc" then
            local f33_local14 = action_to_perform[13]
            ai:SetupOperationLocal(AI_OPERATION_NpcAc_Weapon_Ver100, target, weapon_slot, weapon_action, unk_float_arg,
                f33_local6, f33_local7, f33_local8, f33_local9, ai_trigger_input_type, f33_local11, f33_local12,
                f33_local13,
                f33_local14)
        elseif action_type == "NpcAc_WepChange" then
            ai:ChangeWeapon(weapon_slot)
        elseif action_type == "NpcAc_WepChargeCancel" then
            ai:CancelChargeWeapon(weapon_slot)
        elseif action_type == "NpcAc_WepPurge" then
            ai:PurgeWeapon(weapon_slot)
        else
            ai:SetupOperationLocal(AI_OPERATION_Weapon_Ver102, target, weapon_slot, weapon_action, unk_float_arg,
                f33_local6,
                f33_local7, f33_local8, f33_local9, ai_trigger_input_type, f33_local11, f33_local12, f33_local13)
        end
    end
end

local f0_local5 = function(ai, f34_arg1, f34_arg2, f34_arg3, f34_arg4, f34_arg5, f34_arg6)
    ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_MOVING_DIRECTION)
    if ai:GetMovePointType() ~= f34_arg1 then
        ai:SetMovePointType(f34_arg1)
    end
    if f34_arg3 < ai:GetDist_Point(POINT_MOVE_POINT) then
        local f34_local0 = ai:GetTargetForwardAngle(TARGET_SELF)
        local f34_local1 = ai:GetToTargetAngle(POINT_MOVE_POINT)
        if ai:GetMovementSpeed(AI_SPEED_REF_Horizontal, false) < 1 then
            f34_local0 = f34_local0 + f34_arg6 * 0.5
        else
            f34_local0 = f34_local0 + math.min(f34_arg6, math.max(f34_local1, -f34_arg6))
        end
        local f34_local2 = 0
        local f34_local3 = POINT_MOVE_POINT
        local f34_local4 = 0
        local f34_local5 = f34_arg3
        local f34_local6 = 0
        local f34_local7 = 360
        local f34_local8 = 360
        local f34_local9 = 0
        ai:SetupOperationLocal(AI_OPERATION_KeepDistance, f34_local2, f34_local3, f34_local4, f34_local5, f34_local6,
            f34_local7, true)
    else
        ai:StepNextMovePoint()
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
        if type(f34_arg4) == "number" and type(f34_arg5) == "number" and f34_arg4 <= f34_arg5 then
            ai:SetOperationUpdateIntervalLocal(math.random(f34_arg4 * 1000, f34_arg5 * 1000) / 1000)
        end
    end
    ai:RequestCallOperationLocal()
end

function EZOP_OpFunc_Wait(ai, f35_arg1, f35_arg2, arg_map)
    Log("EZOP_OpFunc_Wait fired")
    local f35_local0 = arg_map[2]
    local f35_local1 = arg_map[3]
    local f35_local2 = arg_map[4]
    local f35_local3 = arg_map[5]
    if type(f35_local2) == "function" then
        f35_local2(ai)
    end
    EZOP_SetUpActUniqueInterruptFunc(ai, f35_local3)
    ai:SetupOperationLocal(AI_OPERATION_Invalid)
end

function EZOP_OpFunc_ClearOperation(ai, f36_arg1, f36_arg2, f36_arg3)
    ai:SetupOperationLocal(AI_OPERATION_Invalid)
end

function EZOP_OpFunc_SearchCoverPoint(ai, f37_arg1, f37_arg2, f37_arg3)
    local f37_local0 = f37_arg3[1]
    local f37_local1 = f37_arg3[2]
    local f37_local2 = f37_arg3[3]
    local f37_local3 = f37_arg3[4]
    local f37_local4 = f37_arg3[5]
    if EZOP_IsPointReserved(ai) and EZOP_PointCheck_CoverAsync(ai, POINT_AIDestPoint_Reserve, f37_local2) then
    else
        EZOP_UnreservePoint(ai)
        local f37_local5 = f37_local2[1]
        local f37_local6 = ai:SearchAiDestinationPoint(AIDestPoint_Type_Cover, f37_local5)
        local f37_local7 = {}
        local f37_local8 = 0
        for f37_local9 = POINT_AIDestPoint_Search_0, POINT_AIDestPoint_Search_0 + f37_local6, 1 do
            if EZOP_PointCheck_CoverAsync(ai, f37_local9, f37_local2) then
                f37_local8 = f37_local8 + 1
                f37_local7[f37_local8] = f37_local9
            end
        end
        local f37_local9 = ai:GetNumber(VALUE_ID_LOGIC_ID)
        local f37_local10 = EZOP_GetInstanceHandle(ai)
        EZOP_ResetAsyncNavCheckTargetSet(ai, f37_local9, f37_local10)
        for f37_local11 = 1, f37_local8, 1 do
            local f37_local14 = ai:CheckDoesExistPathAsync(f37_local7[f37_local11], AI_DIR_TYPE_F, 0)
            EZOP_AsyncNavCheckTargetSet[f37_local9][f37_local10][f37_local11] = { f37_local14, f37_local7[f37_local11] }
        end
    end
end

function EZOP_CheckSightablePoint(ai, f38_arg1)
    local f38_local0 = ai:IsLOSokAtoB(f38_arg1, 0.1, TARGET_ENE_0, 0)
    if f38_local0 then
        return true
    end
    return false
end

function EZOP_OpFunc_SearchMovePoint(ai, f39_arg1, f39_arg2, f39_arg3)
    local f39_local0 = f39_arg3[1]
    local f39_local1 = f39_arg3[2]
    local f39_local2 = f39_arg3[3]
    local f39_local3 = f39_arg3[4]
    local f39_local4 = f39_arg3[5]
    local f39_local5 = f39_local2[1]
    local f39_local6 = f39_local2[2]
    local f39_local7 = f39_local2[3]
    local f39_local8 = f39_local2[4]
    local f39_local9 = f39_local2[5]
    local f39_local10 = f39_local2[6]
    local f39_local11 = f39_local2[7]
    local f39_local12 = f39_local2[8]
    local f39_local13 = ai:SearchAiRuntimePointEx(f39_local5, f39_local6, f39_local7, f39_local8, f39_local9, f39_local10,
        f39_local11, f39_local12)
    local f39_local14 = {}
    local f39_local15 = 0
    for f39_local16 = POINT_AIDestPoint_Search_0, POINT_AIDestPoint_Search_0 + f39_local13, 1 do
        if EZOP_CheckSightablePoint(ai, f39_local16) then
            f39_local15 = f39_local15 + 1
            f39_local14[f39_local15] = f39_local16
        end
    end
    local f39_local16 = ai:GetNumber(VALUE_ID_LOGIC_ID)
    local f39_local17 = EZOP_GetInstanceHandle(ai)
    EZOP_ResetAsyncNavCheckTargetSet(ai, f39_local16, f39_local17)
    for f39_local18 = 1, f39_local15, 1 do
        local f39_local21 = ai:CheckDoesExistPathAsync(f39_local14[f39_local18], AI_DIR_TYPE_F, 0)
        EZOP_AsyncNavCheckTargetSet[f39_local16][f39_local17][f39_local18] = { f39_local21, f39_local14[f39_local18] }
    end
end

function EZOP_OpFunc_SearchShootAssetPoint(ai, f40_arg1, f40_arg2, f40_arg3)
    local f40_local0 = f40_arg3[1]
    local f40_local1 = f40_arg3[2]
    local f40_local2 = f40_arg3[3]
    local f40_local3 = f40_arg3[4]
    local f40_local4 = f40_arg3[5]
    if EZOP_IsPointReserved(ai) and EZOP_PointCheck_ShootAssetAsync(ai, POINT_AIDestPoint_Reserve, f40_local2) then
    else
        EZOP_UnreservePoint(ai)
        local f40_local5 = f40_local2[1]
        local f40_local6 = ai:SearchAiDestinationPointShoot(f40_local5)
        local f40_local7 = {}
        local f40_local8 = 0
        for f40_local9 = POINT_AIDestPoint_Search_0, POINT_AIDestPoint_Search_0 + f40_local6, 1 do
            if EZOP_PointCheck_ShootAssetAsync(ai, f40_local9, f40_local2) then
                f40_local8 = f40_local8 + 1
                f40_local7[f40_local8] = f40_local9
            end
        end
        local f40_local9 = ai:GetNumber(VALUE_ID_LOGIC_ID)
        local f40_local10 = EZOP_GetInstanceHandle(ai)
        EZOP_ResetAsyncNavCheckTargetSet(ai, f40_local9, f40_local10)
        EZOP_AsyncNavCheckTargetSet[f40_local9][f40_local10][1] = { 0, f40_local7[1] }
    end
end

function EZOP_OpFunc_TankTurn(ai, f41_arg1, f41_arg2, f41_arg3)
    local f41_local0 = f41_arg3[2]
    local f41_local1 = f41_arg3[3]
    local f41_local2 = f41_arg3[4]
    local f41_local3 = f41_arg3[5]
    local f41_local4 = ai:GetAngleAtoB(TARGET_SELF, f41_local1)
    local f41_local5 = nil
    if f41_local4 < 0 then
        f41_local5 = f41_local3[1]
    else
        f41_local5 = f41_local3[2]
    end
    local f41_local6 = f41_local5[1]
    local f41_local7 = f41_local5[2]
    local f41_local8 = f41_local5[3]
    local f41_local9 = f41_local5[4]
    local f41_local10 = f41_local5[5]
    local f41_local11 = f41_local5[6]
    local f41_local12 = f41_local5[7]
    local f41_local13 = f41_local5[8]
    ai:SetupOperationLocal(AI_OPERATION_Weapon_Ver100, f41_local7, f41_local8, f41_local6, f41_local9, f41_local10,
        f41_local11, f41_local12, f41_local13)
end

function EZOP_OpFunc_AbsorptionTargetPoint(ai, f42_arg1, f42_arg2, f42_arg3)
    local f42_local0 = f42_arg3[2]
    local f42_local1 = f42_arg3[3]
    local f42_local2 = f42_arg3[4]
    local f42_local3 = f42_arg3[5]
    local f42_local4 = AI_OPERATION_AbsorptionTargetPoint
    ai:SetupOperationLocal(f42_local4, f42_local1, f42_local0, f42_local2, f42_local3)
end

local turn_to_target = function(ai, f43_arg1, f43_arg2)
    if f43_arg2 == TARGET_SELF or f43_arg2 == TARGET_NONE then
        ai:SetLockonTargetType(f43_arg1)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_MOVING_DIRECTION)
    else
        ai:SetLockonTargetType(f43_arg2)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_TARGET_DIRECTION)
    end
end

function EZOP_OpFunc_MoveToTarget(ai, f44_arg1, f44_arg2, f44_arg3)
    local f44_local0 = f44_arg3[2]
    local f44_local1 = f44_arg3[4]
    local f44_local2 = 0
    local f44_local3 = f44_arg3[5]
    local f44_local4 = 0
    local f44_local5 = f44_arg3[6]
    local f44_local6 = f44_arg3[7]
    local f44_local7 = 0
    local f44_local8 = nil
    local f44_local9 = nil
    local f44_local10 = nil
    local f44_local11 = nil
    local f44_local12 = nil
    if type(f44_arg3[3]) == "table" then
        local f44_local13 = f44_arg3[3][1]
        local f44_local14 = f44_arg3[3][2]
        f44_local10 = f44_arg3[3][3]
        f44_local9 = f44_local14
        f44_local8 = f44_local13
        f44_local11 = AI_TARGET_TYPE_SUBSET
        f44_local12 = 10
        ai:SetSubsetTarget(f44_local9, true, f44_local10, true)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_TARGET_DIRECTION)
    else
        f44_local8 = f44_arg3[3]
        f44_local11 = f44_arg3[3]
        f44_local12 = f44_arg3[5]
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_TARGET_DIRECTION)
    end
    local f44_local13 = EZOP_LocalOpFunc_GetDist(ai, f44_local8, f44_local5)
    if f44_local3 < f44_local13 then
        ai:SetupOperationLocal(AI_OPERATION_KeepDistance, f44_local2, f44_local11, f44_local12, f44_local4, f44_local6,
            f44_local7, true)
    else
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    end
end

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

function EZOP_OpFunc_BoostRise(ai, f46_arg1, f46_arg2, f46_arg3)
    local f46_local0 = f46_arg3[2]
    local f46_local1 = f46_arg3[3]
    local f46_local2 = f46_arg3[4]
    local f46_local3 = f46_arg3[5]
    local f46_local4 = f46_arg3[6]
    local f46_local5 = f46_arg3[7]
    local f46_local6 = f46_arg3[8]
    local f46_local7 = f46_arg3[9]
    local f46_local8 = 10
    local f46_local9 = f46_arg3[10]
    local f46_local10 = f46_arg3[11]
    local f46_local11 = f46_arg3[12]
    if type(f46_local9) == "function" then
        f46_local9(ai)
    end
    EZOP_SetUpActUniqueInterruptFunc(ai, f46_local10)
    turn_to_target(ai, f46_local1, f46_local3)
    ai:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
    ai:SetupOperationLocal(AI_OPERATION_Nav_BoostRiseMove, f46_local1, f46_local5, f46_local4, f46_local6, f46_local8,
        f46_local11)
end

function EZOP_OpFunc_MoveToTarget_Navi(ai, f47_arg1, f47_arg2, f47_arg3)
    local f47_local0 = f47_arg3[2]
    local f47_local1 = f47_arg3[3]
    local f47_local2 = f47_arg3[4]
    local f47_local3 = 0
    local f47_local4 = 0
    local f47_local5 = f47_arg3[6]
    local f47_local6 = 0
    local f47_local7 = 0
    local f47_local8 = 0
    local f47_local9 = 10
    local f47_local10 = f47_arg3[7]
    ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_AUTOMATIC)
    local f47_local11 = EZOP_LocalOpFunc_GetDist(ai, f47_local1, f47_local5)
    if f47_local4 < f47_local11 then
        ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepDistance, f47_local1, f47_local4, f47_local6, f47_local7,
            f47_local8, f47_local9)
    else
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    end
end

function EZOP_OpFunc_MoveToCoverPoint(ai, f48_arg1, f48_arg2, f48_arg3)
    local f48_local0 = f48_arg3[2]
    local f48_local1 = f48_arg3[3]
    local f48_local2 = f48_arg3[4]
    local f48_local3 = f48_arg3[5]
    local f48_local4 = 0
    local f48_local5 = f48_arg3[6]
    local f48_local6 = f48_arg3[7]
    local f48_local7 = 0
    local f48_local8 = 0
    local f48_local9 = 0
    local f48_local10 = 0
    local f48_local11 = 10
    local f48_local12 = f48_arg3[8]
    local f48_local13 = f48_arg3[9]
    local f48_local14 = f48_arg3[10]
    local f48_local15 = f48_arg3[11]
    if not (EZOP_PointCheck_Cover(ai, POINT_AIDestPoint_Reserve, f48_local12) and EZOP_IsPointReserved(ai)) then
        local f48_local16 = f48_local12[1]
        local f48_local17 = ai:SearchAiDestinationPoint(AIDestPoint_Type_Cover, f48_local16)
        local f48_local18 = {}
        local f48_local19 = 0
        for f48_local20 = POINT_AIDestPoint_Search_0, POINT_AIDestPoint_Search_0 + f48_local17, 1 do
            if EZOP_PointCheck_Cover(ai, f48_local20, f48_local12, ResionNo) then
                f48_local19 = f48_local19 + 1
                f48_local18[f48_local19] = f48_local20
                break
            end
        end
        if f48_local19 > 0 then
            EZOP_UnreservePoint(ai)
            for f48_local20 = 1, f48_local19, 1 do
                if EZOP_ReservePoint(ai, f48_local18[f48_local20]) then
                    break
                end
            end
        end
        if not EZOP_IsPointReserved(ai) then
            ai:SetTimer(f48_local13, f48_local14)
        end
    end
    ai:SetTurnTargetMode(f48_local3)
    local f48_local16 = TARGET_LAST_MOVE_TARGET
    local f48_local17 = EZOP_LocalOpFunc_GetDist(ai, f48_local16, f48_local6)
    if EZOP_IsPointReserved(ai) then
        ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepDistance, f48_local1, f48_local7, f48_local8, f48_local9,
            f48_local10, f48_local11)
    else
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    end
end

function EZOP_OpFunc_MoveToCoverPointAsync(ai, f49_arg1, f49_arg2, f49_arg3)
    local f49_local0 = f49_arg3[2]
    local f49_local1 = f49_arg3[3]
    local f49_local2 = f49_arg3[4]
    local f49_local3 = f49_arg3[5]
    local f49_local4 = 0
    local f49_local5 = f49_arg3[6]
    local f49_local6 = f49_arg3[7]
    local f49_local7 = 0
    local f49_local8 = 0
    local f49_local9 = 0
    local f49_local10 = 0
    local f49_local11 = 10
    local f49_local12 = f49_arg3[8]
    local f49_local13 = f49_arg3[9]
    local f49_local14 = f49_arg3[10]
    local f49_local15 = f49_arg3[11]
    ai:SetTurnTargetMode(f49_local3)
    local f49_local16 = TARGET_LAST_MOVE_TARGET
    local f49_local17 = EZOP_LocalOpFunc_GetDist(ai, f49_local16, f49_local6)
    if EZOP_IsPointReserved(ai) then
        ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepDistance, f49_local1, f49_local7, f49_local8, f49_local9,
            f49_local10, f49_local11)
    else
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    end
end

function EZOP_OpFunc_MoveToSnipePoint(ai, f50_arg1, f50_arg2, f50_arg3)
    local f50_local0 = f50_arg3[2]
    local f50_local1 = f50_arg3[3]
    local f50_local2 = f50_arg3[4]
    local f50_local3 = f50_arg3[5]
    local f50_local4 = 0
    local f50_local5 = f50_arg3[6]
    local f50_local6 = f50_arg3[7]
    local f50_local7 = 0
    local f50_local8 = 0
    local f50_local9 = 0
    local f50_local10 = 0
    local f50_local11 = 10
    local f50_local12 = f50_arg3[8]
    local f50_local13 = f50_arg3[9]
    local f50_local14 = f50_arg3[10]
    local f50_local15 = f50_arg3[11]
    if not (EZOP_PointCheck_Snipe(ai, POINT_AIDestPoint_Reserve, f50_local12) and EZOP_IsPointReserved(ai)) then
        local f50_local16 = f50_local12[1]
        local f50_local17 = ai:SearchAiDestinationPoint(AIDestPoint_Type_Snipe, f50_local16)
        local f50_local18 = {}
        local f50_local19 = 0
        for f50_local20 = POINT_AIDestPoint_Search_0, POINT_AIDestPoint_Search_0 + f50_local17, 1 do
            if EZOP_PointCheck_Snipe(ai, f50_local20, f50_local12) then
                f50_local19 = f50_local19 + 1
                f50_local18[f50_local19] = f50_local20
            end
        end
        if f50_local19 > 0 then
            EZOP_UnreservePoint(ai)
            for f50_local20 = 1, f50_local19, 1 do
                if EZOP_ReservePoint(ai, f50_local18[f50_local20]) then
                    break
                end
            end
        end
        if not EZOP_IsPointReserved(ai) then
            ai:SetTimer(f50_local13, f50_local14)
        end
    end
    ai:SetTurnTargetMode(f50_local3)
    local f50_local16 = TARGET_LAST_MOVE_TARGET
    local f50_local17 = EZOP_LocalOpFunc_GetDist(ai, f50_local16, f50_local6)
    if EZOP_IsPointReserved(ai) then
        ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepDistance, f50_local1, f50_local7, f50_local8, f50_local9,
            f50_local10, f50_local11)
    else
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    end
end

function EZOP_OpFunc_MoveToMovePointAsync(ai, f51_arg1, f51_arg2, f51_arg3)
    local f51_local0 = f51_arg3[2]
    local f51_local1 = f51_arg3[3]
    local f51_local2 = f51_arg3[4]
    local f51_local3 = f51_arg3[5]
    local f51_local4 = 0
    local f51_local5 = f51_arg3[6]
    local f51_local6 = f51_arg3[7]
    local f51_local7 = 0
    local f51_local8 = 0
    local f51_local9 = 0
    local f51_local10 = 0
    local f51_local11 = 10
    local f51_local12 = f51_arg3[8]
    local f51_local13 = f51_arg3[9]
    local f51_local14 = f51_arg3[10]
    local f51_local15 = f51_arg3[11]
    ai:SetTurnTargetMode(f51_local3)
    local f51_local16 = TARGET_LAST_MOVE_TARGET
    local f51_local17 = EZOP_LocalOpFunc_GetDist(ai, f51_local16, f51_local6)
    if EZOP_IsPointReserved(ai) then
        ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepDistance, f51_local1, f51_local7, f51_local8, f51_local9,
            f51_local10, f51_local11)
    else
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    end
end

function EZOP_OpFunc_MoveToShootAssetPointAsync(ai, f52_arg1, f52_arg2, f52_arg3)
    local f52_local0 = f52_arg3[2]
    local f52_local1 = f52_arg3[3]
    local f52_local2 = f52_arg3[4]
    local f52_local3 = f52_arg3[5]
    local f52_local4 = 0
    local f52_local5 = f52_arg3[6]
    local f52_local6 = f52_arg3[7]
    local f52_local7 = 0
    local f52_local8 = 0
    local f52_local9 = 0
    local f52_local10 = 0
    local f52_local11 = 10
    local f52_local12 = f52_arg3[8]
    local f52_local13 = f52_arg3[9]
    local f52_local14 = f52_arg3[10]
    local f52_local15 = f52_arg3[11]
    ai:SetTurnTargetMode(f52_local3)
    local f52_local16 = TARGET_LAST_MOVE_TARGET
    local f52_local17 = EZOP_LocalOpFunc_GetDist(ai, f52_local16, f52_local6)
    if EZOP_IsPointReserved(ai) then
        ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepDistance, f52_local1, f52_local7, f52_local8, f52_local9,
            f52_local10, f52_local11)
    else
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    end
end

function EZOP_OpFunc_SidewayMove(ai, f53_arg1, f53_arg2, f53_arg3)
    local f53_local0 = f53_arg3[2]
    local f53_local1 = f53_arg3[3]
    local f53_local2 = f53_arg3[4]
    local f53_local3 = f53_arg3[5]
    local f53_local4 = f53_arg3[6]
    local f53_local5 = 50
    local f53_local6 = -70
    if f53_local3 then
        f53_local6 = f53_local6 * -1
    end
    local f53_local7 = f53_arg3[7]
    local f53_local8 = f53_arg3[8]
    if type(f53_local7) == "function" then
        f53_local7(ai)
    end
    EZOP_SetUpActUniqueInterruptFunc(ai, f53_local8)
    turn_to_target(ai, f53_local1, f53_local4)
    ai:SetSubsetTarget(TARGET_SELF, true, f53_local1, true)
    ai:SetupOperationLocal(AI_OPERATION_Flight_KeepDistance, AI_TARGET_TYPE_SUBSET, f53_local5, f53_local6, 0, 0)
end

function EZOP_OpFunc_LeaveFromTarget(ai, f54_arg1, f54_arg2, f54_arg3)
    local f54_local0 = f54_arg3[2]
    local f54_local1 = f54_arg3[3]
    local f54_local2 = f54_arg3[4]
    local f54_local3 = 0
    local f54_local4 = f54_arg3[5]
    local f54_local5 = f54_arg3[6]
    local f54_local6 = 0
    local f54_local7 = 180
    local f54_local8 = 0
    local f54_local9 = f54_arg3[7]
    local f54_local10 = f54_arg3[8]
    if type(f54_local9) == "function" then
        f54_local9(ai)
    end
    EZOP_SetUpActUniqueInterruptFunc(ai, f54_local10)
    turn_to_target(ai, f54_local1, TurnTarget)
    ai:SetSubsetTarget(TARGET_SELF, true, f54_local1, true)
    ai:SetupOperationLocal(AI_OPERATION_Flight_KeepDistance, AI_TARGET_TYPE_SUBSET, 50, f54_local7, 0, 0)
end

function EZOP_OpFunc_KeepDistance_Navi(ai, f55_arg1, f55_arg2, f55_arg3)
    local f55_local0 = f55_arg3[2]
    local f55_local1 = f55_arg3[3]
    local f55_local2 = f55_arg3[4]
    local f55_local3 = f55_arg3[5]
    local f55_local4 = 0
    local f55_local5 = f55_arg3[6]
    local f55_local6 = f55_arg3[7]
    local f55_local7 = f55_arg3[8]
    local f55_local8 = f55_arg3[9]
    local f55_local9 = f55_arg3[10]
    local f55_local10 = 0
    local f55_local11 = 10
    local f55_local12 = f55_arg3[11]
    local f55_local13 = nil
    if type(f55_local12) == "table" then
        f55_local13 = f55_local12[1]
    end
    ai:SetLockonTargetType(f55_local1)
    ai:SetTurnTargetMode(f55_local3)
    local f55_local14 = TARGET_LAST_MOVE_TARGET
    local f55_local15 = EZOP_LocalOpFunc_GetDist(ai, f55_local14, f55_local6)
    if f55_local13 == EZOP_NAVI_SERCHTYPE_IGNORE then
        ai:SetupOperationLocal(AI_OPERATION_Flight_KeepDistance, f55_local1, f55_local7, f55_local8, f55_local9, 0)
    else
        ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepDistance, f55_local1, f55_local7, f55_local8, f55_local9,
            f55_local10, f55_local11)
    end
end

function EZOP_OpFunc_KeepDistance_Navi2(ai, f56_arg1, f56_arg2, f56_arg3)
    local f56_local0 = f56_arg3[2]
    local f56_local1 = f56_arg3[3]
    local f56_local2 = f56_arg3[4]
    local f56_local3 = f56_arg3[5]
    local f56_local4 = 0
    local f56_local5 = f56_arg3[6]
    local f56_local6 = f56_arg3[7]
    local f56_local7 = f56_arg3[8]
    local f56_local8 = f56_arg3[9]
    local f56_local9 = f56_arg3[10]
    local f56_local10 = 0
    local f56_local11 = 10
    local f56_local12 = f56_arg3[11]
    if f56_local3 == TARGET_SELF or f56_local3 == TARGET_NONE then
        ai:SetLockonTargetType(f56_local1)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_MOVING_DIRECTION)
    else
        ai:SetLockonTargetType(f56_local3)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_TARGET_DIRECTION)
    end
    local f56_local13 = TARGET_LAST_MOVE_TARGET
    local f56_local14 = EZOP_LocalOpFunc_GetDist(ai, f56_local13, f56_local6)
    ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepDistance, f56_local1, f56_local7, f56_local8, f56_local9,
        f56_local10, f56_local11)
end

function EZOP_OpFunc_KeepDistance_Navi4(ai, f57_arg1, f57_arg2, f57_arg3)
    local f57_local0 = f57_arg3[2]
    local f57_local1 = f57_arg3[3]
    local f57_local2 = f57_arg3[4]
    local f57_local3 = f57_arg3[5]
    local f57_local4 = 0
    local f57_local5 = f57_arg3[6]
    local f57_local6 = f57_arg3[7]
    local f57_local7 = f57_arg3[8]
    local f57_local8 = f57_arg3[9]
    local f57_local9 = f57_arg3[10]
    local f57_local10 = 0
    local f57_local11 = 10
    local f57_local12 = f57_arg3[11]
    local f57_local13 = f57_arg3[12]
    local f57_local14 = f57_arg3[13]
    if type(f57_local13) == "function" then
        f57_local13(ai)
    end
    EZOP_SetUpActUniqueInterruptFunc(ai, f57_local14)
    if f57_local3 == TARGET_SELF or f57_local3 == TARGET_NONE then
        ai:SetLockonTargetType(f57_local1)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_MOVING_DIRECTION)
    else
        ai:SetLockonTargetType(f57_local3)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_TARGET_DIRECTION)
    end
    local f57_local15 = TARGET_LAST_MOVE_TARGET
    local f57_local16 = EZOP_LocalOpFunc_GetDist(ai, f57_local15, f57_local6)
    ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepDistance, f57_local1, f57_local7, f57_local8, f57_local9,
        f57_local10, f57_local11)
end

function EZOP_OpFunc_KeepDistance_Navi4_SandWorm(ai, f58_arg1, f58_arg2, f58_arg3)
    local f58_local0 = f58_arg3[2]
    local f58_local1 = f58_arg3[3]
    local f58_local2 = f58_arg3[4]
    local f58_local3 = f58_arg3[5]
    local f58_local4 = 0
    local f58_local5 = f58_arg3[6]
    local f58_local6 = f58_arg3[7]
    local f58_local7 = f58_arg3[8]
    local f58_local8 = f58_arg3[9]
    local f58_local9 = f58_arg3[10]
    local f58_local10 = 0
    local f58_local11 = 10
    local f58_local12 = f58_arg3[11]
    local f58_local13 = f58_arg3[12]
    local f58_local14 = f58_arg3[13]
    if type(f58_local13) == "function" then
        f58_local13(ai)
    end
    EZOP_SetUpActUniqueInterruptFunc(ai, f58_local14)
    if f58_local3 == TARGET_SELF or f58_local3 == TARGET_NONE then
        ai:SetLockonTargetType(f58_local1)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_MOVING_DIRECTION)
    else
        ai:SetLockonTargetType(f58_local3)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_TARGET_DIRECTION)
    end
    local f58_local15 = TARGET_LAST_MOVE_TARGET
    local f58_local16 = EZOP_LocalOpFunc_GetDist(ai, f58_local15, f58_local6)
    ai:SetupOperationLocal(AI_OPERATION_Flight_KeepDistance, f58_local1, f58_local7, f58_local8, f58_local9, f58_local10)
end

function EZOP_OpFunc_KeepDistance_Navi_Air(ai, f59_arg1, f59_arg2, f59_arg3)
    local f59_local0 = f59_arg3[2]
    local f59_local1 = f59_arg3[3]
    local f59_local2 = f59_arg3[4]
    local f59_local3 = f59_arg3[5]
    local f59_local4 = 0
    local f59_local5 = f59_arg3[6]
    local f59_local6 = f59_arg3[7]
    local f59_local7 = f59_arg3[8]
    local f59_local8 = f59_arg3[9]
    local f59_local9 = f59_arg3[10]
    local f59_local10 = f59_arg3[11]
    local f59_local11 = f59_arg3[12]
    local f59_local12 = 0
    local f59_local13 = 10
    local f59_local14 = f59_arg3[13]
    local f59_local15 = f59_arg3[14]
    local f59_local16 = f59_arg3[15]
    local f59_local17 = f59_arg3[16]
    if f59_local15 ~= nil then
        f59_local15(ai)
    end
    EZOP_SetUpActUniqueInterruptFunc(ai, f59_local16)
    if f59_local3 == TARGET_SELF or f59_local3 == TARGET_NONE then
        ai:SetLockonTargetType(f59_local1)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_MOVING_DIRECTION)
    else
        ai:SetLockonTargetType(f59_local3)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_TARGET_DIRECTION)
    end
    local f59_local18 = TARGET_LAST_MOVE_TARGET
    local f59_local19 = EZOP_LocalOpFunc_GetDist(ai, f59_local18, f59_local6)
    ai:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
    ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepAltitude, f59_local1, f59_local7, f59_local8, f59_local9,
        f59_local10, f59_local12, f59_local11, true, -1, -1, f59_local17)
end

function EZOP_OpFunc_CommonMove(ai, f60_arg1, f60_arg2, f60_arg3)
    local f60_local0 = f60_arg3[2]
    local f60_local1 = f60_arg3[3]
    local f60_local2 = f60_arg3[4]
    local f60_local3 = f60_arg3[5]
    local f60_local4 = f60_arg3[6]
    local f60_local5 = 500
    local f60_local6 = f60_arg3[7]
    local f60_local7 = f60_arg3[8]
    local f60_local8 = f60_arg3[9]
    if type(f60_local6) == "function" then
        f60_local6(ai)
    end
    EZOP_SetUpActUniqueInterruptFunc(ai, f60_local7)
    turn_to_target(ai, f60_local1, f60_local4)
    ai:SetNaviRouteSearchType(f60_local8)
    ai:SetSubsetTarget(TARGET_SELF, true, f60_local1, true)
    ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepDistance, AI_TARGET_TYPE_SUBSET, f60_local5, f60_local3, 0, 0, 10)
end

function EZOP_OpFunc_MoveFolatNoNavi(ai, f61_arg1, f61_arg2, f61_arg3)
    local f61_local0 = f61_arg3[2]
    local f61_local1 = f61_arg3[3]
    local f61_local2 = f61_arg3[4]
    local f61_local3 = f61_arg3[5]
    local f61_local4 = 0
    local f61_local5 = f61_arg3[6]
    local f61_local6 = f61_arg3[7]
    local f61_local7 = f61_arg3[8]
    local f61_local8 = f61_arg3[9]
    local f61_local9 = f61_arg3[10]
    local f61_local10 = f61_arg3[11]
    local f61_local11 = 0
    local f61_local12 = 10
    local f61_local13 = f61_arg3[12]
    local f61_local14 = f61_arg3[13]
    if f61_local13 ~= nil then
        f61_local13(ai)
    end
    EZOP_SetUpActUniqueInterruptFunc(ai, f61_local14)
    if f61_local3 == TARGET_SELF or f61_local3 == TARGET_NONE then
        ai:SetLockonTargetType(f61_local1)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_MOVING_DIRECTION)
    else
        ai:SetLockonTargetType(f61_local3)
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_TARGET_DIRECTION)
    end
    ai:SetupOperationLocal(AI_OPERATION_Flight_KeepAltitude, f61_local1, f61_local7, f61_local8, f61_local9, f61_local10,
        f61_local11)
end

function EZOP_OpFunc_MoveRoutePoint(ai, f62_arg1, f62_arg2, f62_arg3)
    local f62_local0 = f62_arg3[2]
    local f62_local1 = f62_arg3[3]
    local f62_local2 = f62_arg3[4]
    local f62_local3 = f62_arg3[5]
    local f62_local4 = 0
    local f62_local5 = f62_arg3[6]
    local f62_local6 = 0
    local f62_local7 = EZOP_ARRIVE_JUDGE_TYPE._Orrigin
    local f62_local8 = 0
    local f62_local9 = 0
    local f62_local10 = 0
    local f62_local11 = 10
    local f62_local12 = 0
    local f62_local13 = nil
    local f62_local14 = nil
    local f62_local15 = nil
    local f62_local16 = nil
    local f62_local17 = nil
    if type(f62_arg3[3]) == "table" then
        local f62_local18 = f62_arg3[3][1]
        local f62_local19 = f62_arg3[3][2]
        f62_local15 = f62_arg3[3][3]
        f62_local14 = f62_local19
        f62_local13 = f62_local18
        f62_local16 = AI_TARGET_TYPE_SUBSET
        f62_local17 = 0
        ai:SetSubsetTarget(f62_local14, true, f62_local15, true)
    else
        f62_local13 = f62_arg3[3]
        f62_local16 = f62_arg3[3]
        f62_local17 = 0
    end
    ai:SetTurnTargetMode(f62_local3)
    local f62_local18 = EZOP_LocalOpFunc_GetDist(ai, f62_local13, f62_local7)
    if f62_local5 < f62_local18 then
        if ai:HasSpecialEffectId(TARGET_SELF, 99993010) then
            ai:SetupOperationLocal(AI_OPERATION_KeepDistance, f62_local4, f62_local16, f62_local17, f62_local6,
                f62_local8, f62_local12, true)
        else
            ai:SetupOperationLocal(AI_OPERATION_Nav_Flight_KeepDistance, f62_local16, f62_local17, f62_local9,
                f62_local10, f62_local6, f62_local11)
        end
    else
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    end
end

function EZOP_OpFunc_UroUroMove(ai, f63_arg1, f63_arg2, f63_arg3)
    local f63_local0 = f63_arg3[2]
    local f63_local1 = f63_arg3[3]
    local f63_local2 = f63_arg3[4]
    local f63_local3 = 0
    local random = ai:GetRandam_Float(f63_arg3[5][1], f63_arg3[5][2])
    local f63_local5 = 5
    local f63_local6 = f63_arg3[6]
    local random2 = ai:GetRandam_Float(f63_arg3[7][1], f63_arg3[7][2])
    local f63_local8 = 10
    local f63_local9 = random2
    local f63_local10 = 0
    local f63_local11 = 5
    ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_MOVING_DIRECTION)
    ai:SetupOperationLocal(AI_OPERATION_KeepDistance, f63_local3, f63_local1, random, f63_local5, random2, f63_local8,
        true)
end

function EZOP_OpFunc_QuickBoost(ai, f64_arg1, f64_arg2, f64_arg3)
    local f64_local0 = f64_arg3[2]
    local f64_local1 = f64_arg3[3]
    local f64_local2 = f64_arg3[4]
    local f64_local3 = 0
    local f64_local4 = 50
    local f64_local5 = 0
    local f64_local6 = f64_arg3[5]
    local f64_local7 = 0
    ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_TARGET_DIRECTION)
    ai:SetSubsetTarget(TARGET_SELF, true, f64_local1, true)
    ai:SetupOperationLocal(AI_OPERATION_KeepDistance, f64_local3, AI_TARGET_TYPE_SUBSET, f64_local4, f64_local5,
        f64_local6, f64_local7, true)
end

function EZOP_OpFunc_Jump(ai, f65_arg1, f65_arg2, f65_arg3)
    local f65_local0 = f65_arg3[2]
    local f65_local1 = f65_arg3[3]
    local f65_local2 = f65_arg3[4]
    local f65_local3 = 0
    local f65_local4 = 10
    local f65_local5 = 0
    local f65_local6 = f65_arg3[5]
    local f65_local7 = 0
    if f65_local6 == nil then
        f65_local4 = 0
        f65_local6 = 0
    end
    ai:SetNumber(VALUE_ID_JUMP_CHECK, 0)
    ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_TARGET_DIRECTION)
    ai:SetSubsetTarget(TARGET_SELF, true, f65_local1, true)
    ai:SetupOperationLocal(AI_OPERATION_KeepDistance, f65_local3, AI_TARGET_TYPE_SUBSET, f65_local4, f65_local5,
        f65_local6, f65_local7, true)
end

function EZOP_OpFunc_Flight_Altitude(ai, f66_arg1, f66_arg2, f66_arg3)

end

function EZOP_OpFunc_RootMove(ai, f67_arg1, f67_arg2, f67_arg3)
    local f67_local0 = f67_arg3[2]
    local f67_local1 = f67_arg3[3]
    local f67_local2 = f67_arg3[4]
    local f67_local3 = f67_arg3[5]
    local f67_local4 = f67_arg3[6]
    local f67_local5 = f67_arg3[7]
    local f67_local6 = ai:GetMovePointType()
    local f67_local7 = OP_MOVE_TYPE_Walk
    local f67_local8 = 360
    f0_local5(ai, f67_local6, f67_local7, f67_local3, f67_local4, f67_local5, f67_local8)
end

function EZOP_OpFunc_MoveToTarget_FloatingFall(ai, f68_arg1, f68_arg2, f68_arg3)
    local f68_local0 = f68_arg3[2]
    local f68_local1 = f68_arg3[3]
    local f68_local2 = f68_arg3[4]
    local f68_local3 = 0
    local f68_local4 = f68_arg3[5]
    local f68_local5 = 0
    local f68_local6 = f68_arg3[6]
    local f68_local7 = f68_arg3[7]
    local f68_local8 = 0
    local f68_local9 = 0
    local f68_local10 = 0
    local f68_local11 = 10
    local f68_local12 = EZOP_LocalOpFunc_GetDist(ai, f68_local1, f68_local6)
    ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_AUTOMATIC)
    if ai:IsLanding() then
        if f68_local4 < f68_local12 then
            ai:SetupOperationLocal(AI_OPERATION_KeepDistance, f68_local3, f68_local1, f68_local4, f68_local5, f68_local7,
                f68_local8, true)
        else
            ai:SetupOperationLocal(AI_OPERATION_Invalid)
        end
    elseif ai:GetBehaviorActionType(TARGET_SELF) == ACTION_TYPE_FLOATING_FALL and f68_local4 < f68_local12 then
        ai:SetupOperationLocal(AI_OPERATION_KeepDistance, f68_local3, f68_local1, f68_local4, f68_local5, f68_local7,
            f68_local8, true)
    else
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    end
end

function EZOP_OpFunc_MoveToTarget_Forward(ai, f69_arg1, f69_arg2, f69_arg3)
    local f69_local0 = f69_arg3[2]
    local f69_local1 = f69_arg3[3]
    local f69_local2 = f69_arg3[4]
    local f69_local3 = 0
    local f69_local4 = f69_arg3[5]
    local f69_local5 = 0
    local f69_local6 = f69_arg3[6]
    local f69_local7 = f69_arg3[7]
    local f69_local8 = 5
    local f69_local9 = f69_arg3[8]
    local f69_local10 = f69_arg3[9]
    local f69_local11 = f69_arg3[10]
    local f69_local12 = EZOP_LocalOpFunc_GetDist(ai, f69_local1, f69_local6)
    ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_MOVING_DIRECTION)
    EZOP_SetAltitude(ai, f69_local11)
    if f69_local4 < f69_local12 then
        ai:SetupOperationLocal(AI_OPERATION_KeepDistance_Advanced, f69_local3, f69_local1, f69_local4, f69_local5,
            f69_local7, f69_local8, f69_local9, f69_local10)
    else
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    end
end

function EZOP_OpFunc_LeaveFromTarget_Forward(ai, f70_arg1, f70_arg2, f70_arg3)
    local f70_local0 = f70_arg3[2]
    local f70_local1 = f70_arg3[3]
    local f70_local2 = f70_arg3[4]
    local f70_local3 = 0
    local f70_local4 = f70_arg3[5]
    local f70_local5 = 0
    local f70_local6 = f70_arg3[6]
    local f70_local7 = f70_arg3[7]
    local f70_local8 = 5
    local f70_local9 = f70_arg3[8]
    local f70_local10 = f70_arg3[9]
    local f70_local11 = f70_arg3[10]
    local f70_local12 = EZOP_LocalOpFunc_GetDist(ai, f70_local1, f70_local6)
    ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_MOVING_DIRECTION)
    EZOP_SetAltitude(ai, f70_local11)
    if f70_local12 < f70_local4 then
        ai:SetupOperationLocal(AI_OPERATION_KeepDistance_Advanced, f70_local3, f70_local1, f70_local4, f70_local5,
            f70_local7, f70_local8, f70_local9, f70_local10)
    else
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    end
end

local real_movement_func = function(ai, f71_arg1, f71_arg2, f71_arg3, f71_arg4)
    if f71_arg3 == EZOP_MOVETYPE._WAIT then
        ai:SetMinStickHorizontalVelocity(0)
        ai:SetMaxStickHorizontalVelocity(0)
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    elseif f71_arg3 == EZOP_MOVETYPE._TURN then
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_TARGET_DIRECTION)
        if ai:GetBehaviorActionType(TARGET_SELF) ~= ACTION_TYPE_TURN or ai:GetNumber(VALUE_ID_CHECKABLE_TAEFLAGS) < 1 then
            local f71_local0 = TARGET_SELF
            local f71_local1 = AI_DIR_TYPE_F
            local f71_local2 = f71_arg4[8]
            local f71_local3 = 999999
            if not ai:IsInsideTargetEx(f71_local0, f71_arg2, f71_local1, f71_local2, f71_local3) then
                local f71_local4 = 0
                local f71_local5 = f71_arg4[5]
                local f71_local6 = 0
                local f71_local7 = f71_arg4[6]
                local f71_local8 = f71_arg4[7]
                local f71_local9 = 0
                ai:CallActionExec(AI_CALLACT_EXEC_QuickTurn)
                ai:RequestCallOperationLocal()
                if false then
                end
            end
        else
            ai:SetupOperation(EZOP_LAYER._MOVE01, AI_OPERATION_Invalid)
        end
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    elseif f71_arg3 == EZOP_MOVETYPE._TURN_FORMAL then
        local f71_local0 = EZOP_TransitionNotifyIDDef._Turn
        local f71_local1 = f71_arg4[2]
        local f71_local2 = f71_arg4[3]
        local f71_local3 = f71_arg4[4]
        local f71_local4 = 0
        local f71_local5 = f71_arg4[5]
        ai:SetupOperationLocal(AI_OPERATION_Action_Turn, f71_local0, f71_local2, f71_local1, f71_local4, f71_local5)
    elseif f71_arg3 == EZOP_MOVETYPE._RELATIVE_TURN then
        local f71_local0 = EZOP_TransitionNotifyIDDef._Turn
        local f71_local1 = f71_arg4[2]
        local f71_local2 = f71_arg4[3]
        local f71_local3 = f71_arg4[4]
        local f71_local4 = 0
        local f71_local5 = f71_arg4[5]
        local f71_local6 = f71_arg4[6]
        ai:SetupOperationLocal(AI_OPERATION_Action_RelativeTurn, f71_local0, f71_local2, f71_local6, f71_local1,
            f71_local4, f71_local5)
    elseif f71_arg3 == EZOP_MOVETYPE._LOOPTURN_FORMAL then
        local f71_local0 = -1
        local f71_local1 = f71_arg4[2]
        local f71_local2 = f71_arg4[3]
        local f71_local3 = f71_arg4[4]
        local f71_local4 = 0
        ai:SetupOperationLocal(AI_OPERATION_Action_Turn, f71_local0, f71_local2, f71_local1, f71_local4)
    elseif f71_arg3 == EZOP_MOVETYPE._WALK then
        ai:SetMinStickHorizontalVelocity(0)
        ai:SetMaxStickHorizontalVelocity(0.49)
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    elseif f71_arg3 == EZOP_MOVETYPE._RUN then
        ai:SetMinStickHorizontalVelocity(0)
        ai:SetMaxStickHorizontalVelocity(1)
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    elseif f71_arg3 == EZOP_MOVETYPE._BOOST then
        ai:SetMinStickHorizontalVelocity(0)
        ai:SetMaxStickHorizontalVelocity(1)
        ai:SetupOperationLocal(AI_OPERATION_Dash, OP_BOOST_TYPE_Dash, 99)
    elseif f71_arg3 == EZOP_MOVETYPE._QB then
        ai:SetMinStickHorizontalVelocity(0)
        ai:SetMaxStickHorizontalVelocity(1)
        if ai:GetBehaviorActionType(TARGET_SELF) ~= ACTION_TYPE_QUICK_BOOST or ai:GetNumber(VALUE_ID_CHECKABLE_TAEFLAGS) < 1 then
            ai:CallActionExec(AI_CALLACT_EXEC_QuickBoost)
            ai:RequestCallOperationLocal()
        else
            ai:SetupOperation(EZOP_LAYER._MOVE01, AI_OPERATION_Invalid)
        end
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    elseif f71_arg3 == EZOP_MOVETYPE._QB2 then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
        if ai:HasSpecialEffectId(TARGET_SELF, 8902) then
            ai:SetupOperation(EZOP_LAYER._MOVE01, AI_OPERATION_Invalid)
        else
            ai:CallActionExec(AI_CALLACT_EXEC_QuickBoost)
            ai:RequestCallOperationLocal()
        end
    elseif f71_arg3 == EZOP_MOVETYPE._QB_FORMAL then
        local f71_local0 = EZOP_TransitionNotifyIDDef._QB
        local f71_local1 = f71_arg4[2]
        local f71_local2 = f71_arg4[3]
        local f71_local3 = f71_arg4[4]
        local f71_local4 = f71_arg4[5]
        local f71_local5 = 0
        local f71_local6 = f71_arg4[6]
        local f71_local7 = f71_arg4[7]
        local f71_local8 = f71_arg4[8]
        ai:SetupOperationLocal(AI_OPERATION_Action_QB, f71_local0, f71_local2, f71_local4, f71_local1, f71_local5,
            f71_local6)
        if type(f71_local7) == "function" then
            f71_local7(ai)
        end
        EZOP_SetUpActUniqueInterruptFunc(ai, f71_local8)
    elseif f71_arg3 == EZOP_MOVETYPE._ASSULT_BOOST then
        local f71_local0 = f71_arg4[2]
        local f71_local1 = f71_arg4[3]
        local f71_local2 = f71_arg4[4]
        local f71_local3 = f71_arg4[5]
        local f71_local4 = f71_arg4[6]
        local f71_local5 = f71_arg4[7]
        local f71_local6 = f71_arg4[8]
        local f71_local7 = f71_arg4[9]
        local f71_local8 = f71_arg4[10]
        ai:SetupOperationLocal(AI_OPERATION_AssaultBoost, f71_local0, f71_local1, f71_local3, f71_local7, f71_local8)
        if type(f71_local5) == "function" then
            f71_local5(ai)
        end
        EZOP_SetUpActUniqueInterruptFunc(ai, f71_local6)
    elseif f71_arg3 == EZOP_MOVETYPE._JUMP then
        ai:SetMinStickHorizontalVelocity(0)
        ai:SetMaxStickHorizontalVelocity(1)
        if ai:GetBehaviorActionType(TARGET_SELF) ~= ACTION_TYPE_JUMP or ai:GetNumber(VALUE_ID_CHECKABLE_TAEFLAGS) < 1 then
            ai:CallActionExec(AI_CALLACT_EXEC_UpQuickBoost)
            ai:RequestCallOperationLocal()
        end
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    elseif f71_arg3 == EZOP_MOVETYPE._JUMP2 then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
        if ai:HasSpecialEffectId(TARGET_SELF, 8900) then
            ai:SetupOperation(EZOP_LAYER._MOVE01, AI_OPERATION_Invalid)
        else
            ai:CallActionExec(AI_CALLACT_EXEC_UpQuickBoost)
            ai:RequestCallOperationLocal()
        end
    elseif f71_arg3 == EZOP_MOVETYPE._JUMP_FORMAL then
        local f71_local0 = EZOP_TransitionNotifyIDDef._Jump
        local f71_local1 = f71_arg4[2]
        local f71_local2 = f71_arg4[3]
        local f71_local3 = f71_arg4[4]
        local f71_local4 = f71_arg4[5]
        local f71_local5 = 0
        local f71_local6 = AI_TRIGGER_INPUT_TYPE_ONCE
        local f71_local7 = f71_arg4[6]
        ai:SetupOperationLocal(AI_OPERATION_Action_Jump, f71_local0, f71_local2, f71_local4, f71_local1, f71_local5,
            f71_local6, f71_local7)
    elseif f71_arg3 == EZOP_MOVETYPE._LOOPJUMP_FORMAL then
        local f71_local0 = -1
        local f71_local1 = f71_arg4[2]
        local f71_local2 = f71_arg4[3]
        local f71_local3 = f71_arg4[4]
        local f71_local4 = f71_arg4[5]
        local f71_local5 = 0
        local f71_local6 = AI_TRIGGER_INPUT_TYPE_HOLD
        local f71_local7 = false
        ai:SetupOperationLocal(AI_OPERATION_Action_Jump, f71_local0, f71_local2, f71_local4, f71_local1, f71_local5,
            f71_local6, f71_local7)
    elseif f71_arg3 == EZOP_MOVETYPE._NPAC_HOVER then
        local f71_local0 = EZOP_TransitionNotifyIDDef._NPAC_Hover
        local f71_local1 = f71_arg4[2]
        local f71_local2 = f71_arg4[3]
        local f71_local3 = f71_arg4[4]
        local f71_local4 = f71_arg4[5]
        local f71_local5 = f71_arg4[6]
        local f71_local6 = 0
        local f71_local7 = AI_TRIGGER_INPUT_TYPE_ONCE
        ai:SetupOperationLocal(AI_OPERATION_Action_Hover, f71_local0, f71_local5, f71_local1, f71_local6)
    elseif f71_arg3 == EZOP_MOVETYPE._FLOATING_FALL then
        ai:SetMinStickHorizontalVelocity(0)
        ai:SetMaxStickHorizontalVelocity(1)
        if ai:IsLanding() then
            local f71_local0 = f71_arg4[7]
            f0_local7(ai, f71_arg1, f71_arg2, f71_local0, f71_arg4)
            ai:RequestCallOperationLocal()
        else
            if ai:GetBehaviorActionType(TARGET_SELF) ~= ACTION_TYPE_FLOATING_FALL then
                ai:SetupOperation(EZOP_LAYER._MOVE01, AI_OPERATION_Invalid)
                ai:RequestCallOperationLocal()
            else
                ai:RequestCallOperation(EZOP_LAYER._MOVE01)
            end
            ai:SetupOperationLocal(AI_OPERATION_Dash, OP_BOOST_TYPE_Dash, f71_arg1)
        end
    else
        ai:SetMinStickHorizontalVelocity(0)
        ai:SetMaxStickHorizontalVelocity(1)
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    end
end

function EZOP_OpFunc_MoveType(ai, f72_arg1, f72_arg2, f72_arg3)
    Log("EZOP_OpFunc_MoveType fired (aka, quickboost_formal)")
    local f72_local0 = f72_arg3[2]
    local f72_local1 = f72_arg3[3]
    local f72_local2 = f72_arg3[4]
    real_movement_func(ai, f72_local0, f72_local1, f72_local2, f72_arg3)
end

function EZOP_OpFunc_Attack(ai, f73_arg1, f73_arg2, f73_arg3)
    local f73_local0 = f73_arg3[1]
    local f73_local1 = f73_arg3[2]
    local f73_local2 = f73_arg3[3]
    local f73_local3 = f73_arg3[4]
    local f73_local4 = f73_arg3[5]
    ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_AUTOMATIC)
    ai:SetLockonTargetType(f73_local1)
    ai:SetupOperationLocal(AI_OPERATION_Weapon_Basic, f73_local2, f73_local3, f73_local4)
    if ai:HasSpecialEffectId(TARGET_SELF, 8900) then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    else
        ai:RequestCallOperationLocal()
    end
end

function EZOP_OpFunc_Attack2(ai, f74_arg1, f74_arg2, f74_arg3)
    local f74_local0 = f74_arg3[1] + 0.1
    local f74_local1 = f74_arg3[2]
    local f74_local2 = f74_arg3[3]
    local f74_local3 = f74_arg3[4]
    local f74_local4 = f74_arg3[5]
    local f74_local5 = f74_arg3[6]
    local f74_local6 = f74_arg3[7]
    local f74_local7 = f74_arg3[8]
    local f74_local8 = f74_arg3[9]
    local f74_local9 = f74_arg3[10]
    ai:SetupOperationLocal(AI_OPERATION_Weapon_Ver100, f74_local1, f74_local2, f74_local0, f74_local3, f74_local4,
        f74_local5, f74_local6, f74_local7, f74_local9)
end

function EZOP_OpFunc_CallActionExec(ai, f75_arg1, f75_arg2, f75_arg3)
    local f75_local0 = f75_arg3[1]
    local f75_local1 = f75_arg3[2]
    local f75_local2 = f75_arg3[3]
    local f75_local3 = f75_arg3[4]
    local f75_local4 = f75_arg3[5]
    ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_AUTOMATIC)
    ai:CallActionExec(f75_local2, 0, f75_local3)
    if f75_local4 == "Beat" then
        ai:RequestCallOperationLocal()
    end
end

function EZOP_OpFunc_CallActionExec_ExtraLayer(ai, f76_arg1, f76_arg2, f76_arg3)
    local f76_local0 = f76_arg3[2]
    if f76_arg3[1] == nil then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    elseif f76_arg3[1][5] == nil then
        ai:SetupOperationLocal(AI_OPERATION_Invalid)
    else
        local f76_local1 = f76_arg3[1][5]
        local f76_local2 = f76_local1[1]
        local f76_local3 = f76_local1[2][1]
        local f76_local4 = f76_local1[2][1]
        local f76_local5 = f76_local1[3]
        ai:SetTurnTargetMode(AI_TURN_TARGET_TYPE_AUTOMATIC)
        ai:CallActionExec(f76_local3, 0, f76_local4)
        if f76_local5 == "Beat" then
            ai:RequestCallOperationLocal()
        end
    end
end

function EZOP_OpFunc_CoverCall_ExtraLayer(ai, f77_arg1, f77_arg2, f77_arg3)
    ai:RequestCallOperationLocal()
    local f77_local0 = f77_arg3[8]
    local f77_local1 = f77_arg3[9]
    local f77_local2 = f77_arg3[10]
    if not EZOP_IsPointReserved(ai) then
        return
    end
    local distance = ai:GetDist(POINT_AIDestPoint_Reserve)
    if distance < 20 and not EZOP_isCoverAction(ai) then
        if EZOP_PointCheck_Cover(ai, POINT_AIDestPoint_Reserve, f77_local0, -1) then
            ai:CallActionExec(AI_CALLACT_EXEC_CoverAction, 0, 0)
        else
            EZOP_UnreservePoint(ai)
            ai:SetTimer(f77_local1, f77_local2)
        end
    end
end

function EZOP_OpFunc_SnipeCall_ExtraLayer(ai, f78_arg1, f78_arg2, f78_arg3)
    ai:RequestCallOperationLocal()
    local f78_local0 = f78_arg3[8]
    local f78_local1 = f78_arg3[9]
    local f78_local2 = f78_arg3[10]
    local f78_local3 = f78_arg3[11]
    local f78_local4 = f78_arg3[12]
    if not EZOP_IsPointReserved(ai) then
        return
    end
    local distance = ai:GetDist(POINT_AIDestPoint_Reserve)
    if distance < 20 and not f78_local4(ai) then
        if EZOP_PointCheck_Snipe(ai, POINT_AIDestPoint_Reserve, f78_local0) then
            ai:CallActionExec(f78_local3, 0, 0)
        else
            EZOP_UnreservePoint(ai)
            ai:SetTimer(f78_local1, f78_local2)
        end
    end
end

function EZOP_OpFunc_MovingAttack01(ai, f79_arg1, f79_arg2, f79_arg3)
    f0_local0(ai, f79_arg3, 1)
end

function EZOP_OpFunc_MovingAttack02(ai, f80_arg1, f80_arg2, f80_arg3)
    f0_local0(ai, f80_arg3, 2)
end

function EZOP_OpFunc_MovingAttack03(ai, f81_arg1, f81_arg2, f81_arg3)
    f0_local0(ai, f81_arg3, 3)
end

function EZOP_OpFunc_MovingAttack04(ai, f82_arg1, f82_arg2, f82_arg3)
    f0_local0(ai, f82_arg3, 4)
end

function EZOP_OpFunc_MovingAttack2_01(ai, f83_arg1, f83_arg2, f83_arg3)
    f0_local1(ai, f83_arg3, 1)
end

function EZOP_OpFunc_MovingAttack2_02(ai, f84_arg1, f84_arg2, f84_arg3)
    f0_local1(ai, f84_arg3, 2)
end

function EZOP_OpFunc_MovingAttack2_03(ai, f85_arg1, f85_arg2, f85_arg3)
    f0_local1(ai, f85_arg3, 3)
end

function EZOP_OpFunc_MovingAttack2_04(ai, f86_arg1, f86_arg2, f86_arg3)
    f0_local1(ai, f86_arg3, 4)
end

function EZOP_OpFunc_MovingAttack3_01(ai, f87_arg1, f87_arg2, f87_arg3)
    f0_local2(ai, f87_arg3, 1)
end

function EZOP_OpFunc_MovingAttack3_02(ai, f88_arg1, f88_arg2, f88_arg3)
    f0_local2(ai, f88_arg3, 2)
end

function EZOP_OpFunc_MovingAttack3_03(ai, f89_arg1, f89_arg2, f89_arg3)
    f0_local2(ai, f89_arg3, 3)
end

function EZOP_OpFunc_MovingAttack3_04(ai, f90_arg1, f90_arg2, f90_arg3)
    f0_local2(ai, f90_arg3, 4)
end

function EZOP_OpFunc_TrrigerOperation_SetUpActInterrupt(ai, f91_arg1, f91_arg2, f91_arg3)
    local f91_local0 = f91_arg3[4]
    local f91_local1 = f91_arg3[5]
    if type(f91_local0) == "function" then
        f91_local0(ai)
    end
    EZOP_SetUpActUniqueInterruptFunc(ai, f91_local1)
    EZOP_OpFunc_Interrupt(ai, f91_arg1, f91_arg2, f91_arg3)
end

function EZOP_OpFunc_TriggerOperation01(ai, f92_arg1, f92_arg2, f92_arg3)
    local_EZOP_OpFunc_TriggerOperation(ai, f92_arg3, 1)
end

function EZOP_OpFunc_TriggerOperation02(ai, f93_arg1, f93_arg2, f93_arg3)
    local_EZOP_OpFunc_TriggerOperation(ai, f93_arg3, 2)
end

function EZOP_OpFunc_TriggerOperation03(ai, f94_arg1, f94_arg2, f94_arg3)
    local_EZOP_OpFunc_TriggerOperation(ai, f94_arg3, 3)
end

function EZOP_OpFunc_TriggerOperation04(ai, f95_arg1, f95_arg2, f95_arg3)
    local_EZOP_OpFunc_TriggerOperation(ai, f95_arg3, 4)
end

function EZOP_OpFunc_Interrupt(ai, f96_arg1, f96_arg2, f96_arg3)
    local f96_local0 = ai:GetNumber(VALUE_ID_LOGIC_ID)
    local f96_local1 = EZOP_CharUnipueInterruptFuncArr[f96_local0]
    if type(f96_local1) == "function" then
        f96_local1(ai, f96_arg1, f96_arg2, f96_arg3)
    end
    local f96_local2 = EZOP_GetActUniqueInterruptFunc(ai)
    if type(f96_local2) == "function" then
        f96_local2(ai, f96_arg1, f96_arg2, f96_arg3)
    elseif type(f96_local2) == "table" then
        local f96_local3 = table.getn(f96_local2)
        for f96_local4 = 1, f96_local3, 1 do
            f96_local2[f96_local4](ai, f96_arg1, f96_arg2, f96_arg3)
        end
    end
end

PRINT_TEXT(LogHeader_Plan .. "OpFunc: OpFunc OK")
PRINT_TEXT("-----" .. LogHeader_Plan .. "OpFunc Complete-----")
