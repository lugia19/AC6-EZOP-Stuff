function EZOP_Replanning(f1_arg0)
    f1_arg0:RequestCallOperation(LAYER_ID_OP_LOT_CTRL)
    
end

function EZOP_isSpecialStay(ai)
    local hasEffect = ai:HasSpecialEffectId(TARGET_SELF, 5450)
    if not hasEffect then
        if ai:GetBehaviorActionType(TARGET_SELF) ~= 241 then
            hasEffect = false
        else
            hasEffect = true
        end
    end
    return hasEffect
    
end

function EZOP_isCoverAction(ai)
    local hasEffect = ai:HasSpecialEffectId(TARGET_SELF, 5451)
    if not hasEffect then
        if ai:GetBehaviorActionType(TARGET_SELF) ~= ACTION_TYPE_COVER_ACTION then
            hasEffect = false
        else
            hasEffect = true
        end
    end
    return hasEffect
    
end

function EZOP_isLeandAction(f4_arg0)
    return f4_arg0:HasSpecialEffectId(TARGET_SELF, 99992010)
    
end

function EZOP_isModeA(f5_arg0)
    return f5_arg0:HasSpecialEffectId(TARGET_SELF, 99991000)
    
end

function EZOP_isModeB(f6_arg0)
    return f6_arg0:HasSpecialEffectId(TARGET_SELF, 99991001)
    
end

function EZOP_isModeC(f7_arg0)
    return f7_arg0:HasSpecialEffectId(TARGET_SELF, 99991002)
    
end

function EZOP_isModeD(f8_arg0)
    return f8_arg0:HasSpecialEffectId(TARGET_SELF, 99991003)
    
end

function EZOP_isModeE(f9_arg0)
    return f9_arg0:HasSpecialEffectId(TARGET_SELF, 99991004)
    
end

function EZOP_HasAnySpecialEffect(f10_arg0, f10_arg1, f10_arg2)
    for f10_local2, f10_local3 in ipairs(f10_arg2) do
        if f10_arg0:HasSpecialEffectId(f10_arg1, f10_local3) then
            return true
        end
    end
    return false
    

end

function EZOP_TakeOutValue(f11_arg0, f11_arg1)
    if f11_arg1 == nil then
        return -1
    elseif type(f11_arg0) ~= "table" then
        return -1
    elseif f11_arg1 == 1 then
        return f11_arg0[1]
    elseif f11_arg1 == 2 then
        return f11_arg0[1], f11_arg0[2]
    elseif f11_arg1 == 3 then
        return f11_arg0[1], f11_arg0[2], f11_arg0[3]
    elseif f11_arg1 == 4 then
        return f11_arg0[1], f11_arg0[2], f11_arg0[3], f11_arg0[4]
    elseif f11_arg1 == 5 then
        return f11_arg0[1], f11_arg0[2], f11_arg0[3], f11_arg0[4], f11_arg0[5]
    elseif f11_arg1 == 6 then
        return f11_arg0[1], f11_arg0[2], f11_arg0[3], f11_arg0[4], f11_arg0[5], f11_arg0[6]
    elseif f11_arg1 == 7 then
        return f11_arg0[1], f11_arg0[2], f11_arg0[3], f11_arg0[4], f11_arg0[5], f11_arg0[6], f11_arg0[7]
    elseif f11_arg1 == 8 then
        return f11_arg0[1], f11_arg0[2], f11_arg0[3], f11_arg0[4], f11_arg0[5], f11_arg0[6], f11_arg0[7], f11_arg0[8]
    elseif f11_arg1 == 9 then
        return f11_arg0[1], f11_arg0[2], f11_arg0[3], f11_arg0[4], f11_arg0[5], f11_arg0[6], f11_arg0[7], f11_arg0[8], f11_arg0[9]
    elseif f11_arg1 == 10 then
        return f11_arg0[1], f11_arg0[2], f11_arg0[3], f11_arg0[4], f11_arg0[5], f11_arg0[6], f11_arg0[7], f11_arg0[8], f11_arg0[9], f11_arg0[10]
    else
        return -1
    end
    
end

function EZOP_SetCoolTime(f12_arg0, f12_arg1, f12_arg2, f12_arg3, f12_arg4)
    local f12_local0 = GetOpsetPastTime(f12_arg0, f12_arg2)
    if not (f12_arg3 < f12_local0) and f12_local0 ~= -1 then
        f12_arg1[f12_arg2] = f12_arg4
        return true
    end
    return false
    
end

function EZOP_PointCheck_BasePointSquare(f13_arg0, f13_arg1, f13_arg2, f13_arg3)
    local f13_local0 = f13_arg2[1]
    local f13_local1 = f13_arg2[2]
    local f13_local2 = f13_arg2[3]
    local f13_local3 = f13_arg2[4]
    local f13_local4 = f13_arg2[5]
    local f13_local5 = f13_arg2[6]
    local f13_local6 = f13_arg2[7]
    local f13_local7 = f13_arg2[8]
    local f13_local8 = f13_arg2[9]
    local f13_local9 = f13_arg2[10]
    local f13_local10 = -1
    f13_arg0:SetSubsetTarget(f13_local1, true, f13_local2, true)
    local f13_local11 = f13_arg0:GetDistAtoB(f13_local1, f13_local2) * f13_local8
    local f13_local12 = f13_arg0:GetDistAtoB(f13_local1, f13_local2) * f13_local5
    if f13_local12 < f13_local6 then
        f13_local11 = f13_local11 - (f13_local6 - f13_local12)
        f13_local12 = f13_local6
    end
    local f13_local13 = true
    if f13_arg3 then
        f13_local13 = f13_arg0:CheckDoesExistPath(f13_arg1, 0, 0)
    end
    local f13_local14 = true
    if f13_local10 > 0 then
        f13_local14 = f13_arg0:IsInsideTargetRegion(f13_arg1, f13_local10)
    end
    local f13_local15 = f13_arg0:GetDistAtoB(f13_arg1, TARGET_ENE_0)
    local f13_local16 = f13_arg0:GetDistYSigned(f13_arg1)
    local f13_local17 = f13_arg0:GetAngleAtoB(f13_arg1, TARGET_ENE_0)
    if f13_local9 < f13_local15 and -f13_local3 < f13_local17 and f13_local17 < f13_local3 and f13_arg0:IsInsideSquareArea(AI_TARGET_TYPE_SUBSET, f13_arg1, f13_local7, f13_local11, f13_local4, f13_local12) and f13_local14 then
        return true
    end
    return false
    
end

function EZOP_PointCheck_BasePointSquareAsync(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = f14_arg2[1]
    local f14_local1 = f14_arg2[2]
    local f14_local2 = f14_arg2[3]
    local f14_local3 = f14_arg2[4]
    local f14_local4 = f14_arg2[5]
    local f14_local5 = f14_arg2[6]
    local f14_local6 = f14_arg2[7]
    local f14_local7 = f14_arg2[8]
    local f14_local8 = f14_arg2[9]
    local f14_local9 = f14_arg2[10]
    local f14_local10 = -1
    f14_arg0:SetSubsetTarget(f14_local1, true, f14_local2, true)
    local f14_local11 = f14_arg0:GetDistAtoB(f14_local1, f14_local2) * f14_local8
    local f14_local12 = f14_arg0:GetDistAtoB(f14_local1, f14_local2) * f14_local5
    if f14_local12 < f14_local6 then
        f14_local11 = f14_local11 - (f14_local6 - f14_local12)
        f14_local12 = f14_local6
    end
    local f14_local13 = true
    if f14_local10 > 0 then
        f14_local13 = f14_arg0:IsInsideTargetRegion(f14_arg1, f14_local10)
    end
    local f14_local14 = f14_arg0:GetDistAtoB(f14_arg1, TARGET_ENE_0)
    local f14_local15 = f14_arg0:GetDistYSigned(f14_arg1)
    local f14_local16 = f14_arg0:GetAngleAtoB(f14_arg1, TARGET_ENE_0)
    if f14_local9 < f14_local14 and -f14_local3 < f14_local16 and f14_local16 < f14_local3 and f14_arg0:IsInsideSquareArea(AI_TARGET_TYPE_SUBSET, f14_arg1, f14_local7, f14_local11, f14_local4, f14_local12) and f14_local13 then
        return true
    end
    return false
    
end

function EZOP_ResetAsyncNavCheckTargetSet(f15_arg0, f15_arg1, f15_arg2)
    EZOP_AsyncNavCheckTargetSet[f15_arg1][f15_arg2] = {}
    
end

function EZOP_IsPossibleCoverAction(f16_arg0)
    return f16_arg0:HasSpecialEffectId(TARGET_SELF, 99993300)
    
end

function EZOP_PointCheck_Cover(f17_arg0, f17_arg1, f17_arg2)
    return EZOP_PointCheck_BasePointSquare(f17_arg0, f17_arg1, f17_arg2, true)
    
end

function EZOP_PointCheck_CoverAsync(f18_arg0, f18_arg1, f18_arg2)
    return EZOP_PointCheck_BasePointSquareAsync(f18_arg0, f18_arg1, f18_arg2, true)
    
end

function EZOP_PointCheck_Snipe(f19_arg0, f19_arg1, f19_arg2)
    return EZOP_PointCheck_BasePointSquare(f19_arg0, f19_arg1, f19_arg2, false)
    
end

function EZOP_PointCheck_ShootAssetAsync(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = false
    local f20_local1 = f20_arg2[1]
    if f20_arg2[2] >= f20_arg0:GetDistAtoB(f20_arg1, TARGET_SELF) then
        f20_local0 = true
    end
    return f20_local0
    
end

function EZOP_PointCheck_Snipe(f21_arg0, f21_arg1, f21_arg2)
    local f21_local0 = f21_arg2[1]
    local f21_local1 = f21_arg2[2]
    local f21_local2 = f21_arg2[3]
    local f21_local3 = f21_arg2[4]
    local f21_local4 = f21_arg2[5]
    local f21_local5 = f21_arg2[6]
    local f21_local6 = true
    local f21_local7 = f21_arg0:GetDistAtoB(f21_arg1, TARGET_ENE_0)
    local f21_local8 = f21_arg0:GetDistAtoB(f21_arg1, TARGET_SELF)
    if f21_local6 and f21_local2 < f21_local7 and f21_local7 < f21_local3 and f21_local4 < f21_local8 and f21_local8 < f21_local5 then
        return true
    end
    return false
    
end

function EZOP_PointChoice_Snipe(f22_arg0, f22_arg1)
    local f22_local0 = f22_arg1[1]
    local f22_local1 = f22_arg0:SearchAiDestinationPoint(AIDestPoint_Type_Snipe, f22_local0)
    local f22_local2 = {}
    local f22_local3 = 0
    for f22_local4 = POINT_AIDestPoint_Search_0, POINT_AIDestPoint_Search_0 + f22_local1, 1 do
        if EZOP_PointCheck_Snipe(f22_arg0, f22_local4, f22_arg1) then
            f22_local3 = f22_local3 + 1
            f22_local2[f22_local3] = f22_local4
        end
    end
    if f22_local3 > 0 then
        f22_arg0:UnreserveAiDestinationPoint()
        f22_arg0:ReserveAiDestinationPoint(f22_local2[1])
        f22_arg0:SetNumber(VALUE_ID_IS_POINT_RESERVED, 1)
        return true
    end
    return false
    

end

function EZOP_ReservePoint(f23_arg0, f23_arg1)
    if f23_arg0:ReserveAiDestinationPoint(f23_arg1) then
        f23_arg0:SetNumber(VALUE_ID_IS_POINT_RESERVED, 1)
        return true
    end
    return false
    
end

function EZOP_IsPointReserved(f24_arg0)
    return f24_arg0:IsAiDestinationPointReserved()
    
end

function EZOP_UnreservePoint(f25_arg0)
    f25_arg0:UnreserveAiDestinationPoint()
    f25_arg0:SetNumber(VALUE_ID_IS_POINT_RESERVED, 0)
    
end

function EZOP_ReserveDefencePoint(f26_arg0, f26_arg1)
    if f26_arg0:ReserveDefencePoint(f26_arg1) then
        f26_arg0:SetNumber(VALUE_ID_IS_DEFENCE_RESERVED, 1)
        return true
    end
    return false
    
end

function EZOP_IsDefenceReserved(f27_arg0)
    return f27_arg0:IsDefencePointReserved()
    
end

function EZOP_UnreserveDefencePoint(f28_arg0)
    f28_arg0:UnreserveDefencePoint()
    f28_arg0:SetNumber(VALUE_ID_IS_DEFENCE_RESERVED, 0)
    
end

function EZOP_InsideRange(ai, f29_arg1, f29_arg2, f29_arg3, f29_arg4)
    local distance = ai:GetDist(TARGET_ENE_0)
    if f29_arg3 <= distance and distance <= f29_arg4 then
        local f29_local1 = ai:GetToTargetAngle(TARGET_ENE_0)
        local f29_local2 = 0
        if f29_arg1 < 0 then
            f29_local2 = -1
        else
            f29_local2 = 1
        end
        if f29_arg1 + f29_arg2 / -2 <= f29_local1 and f29_local1 <= f29_arg1 + f29_arg2 / 2 or f29_arg1 + f29_arg2 / -2 <= f29_local1 + 360 * f29_local2 and f29_local1 + 360 * f29_local2 <= f29_arg1 + f29_arg2 / 2 then
            return true
        else
            return false
        end
    else
        return false
    end
    
end

function EZOP_OverlapTriggerOperation(f30_arg0, f30_arg1, f30_arg2)
    local f30_local0 = f30_arg2[1]
    local f30_local1 = f30_arg2[2]
    local f30_local2 = f30_arg2[3]
    local f30_local3 = f30_arg2[4]
    local f30_local4 = f30_arg2[5]
    local f30_local5 = f30_arg2[6]
    local f30_local6 = f30_arg2[7]
    local f30_local7 = f30_arg2[8]
    local f30_local8 = f30_arg2[9]
    local f30_local9 = f30_arg2[10]
    local f30_local10 = f30_arg2[11]
    local f30_local11 = f30_arg2[12]
    f30_arg0:SetupOperation(f30_arg1, AI_OPERATION_Weapon_Ver102, f30_local1, f30_local2, f30_local3, f30_local0, f30_local4, f30_local5, f30_local6, f30_local7, f30_local8, f30_local9, f30_local10, f30_local11)
    
end

function EZOP_GetDBRiskCategori(f31_arg0, f31_arg1)
    local f31_local0 = f31_arg0:GetDangerousBulletParamId(f31_arg1)
    if f31_local0 > 9999 then
        f31_local0 = math.floor(f31_local0 / 100000) * 10
        f31_local0 = math.floor(f31_local0)
    end
    return f31_local0
    
end

function EZOP_RandomLR(ai)
    local random = ai:GetRandam_Int(0, 1)
    if random == 0 then
        return 1
    else
        return -1
    end
    
end

function EZOP_DBAnglefS_LR(f33_arg0)
    local f33_local0 = f33_arg0:GetDangerousBulletAngleFromSelf(0)
    if f33_local0 < 0 then
        return -1
    else
        return 1
    end
    
end

function EZOP_CActLot(f34_arg0, f34_arg1, f34_arg2, f34_arg3, f34_arg4, f34_arg5, f34_arg6, f34_arg7, f34_arg8, f34_arg9, f34_arg10, f34_arg11, f34_arg12, f34_arg13)
    if f34_arg4 == nil then
        f34_arg4 = true
    end
    if f34_arg5 == nil then
        f34_arg5 = true
    end
    if f34_arg6 == nil then
        f34_arg6 = true
    end
    if f34_arg7 == nil then
        f34_arg7 = true
    end
    if f34_arg8 == nil then
        f34_arg8 = true
    end
    if f34_arg9 == nil then
        f34_arg9 = true
    end
    if f34_arg10 == nil then
        f34_arg10 = true
    end
    if f34_arg11 == nil then
        f34_arg11 = true
    end
    if f34_arg12 == nil then
        f34_arg12 = true
    end
    if f34_arg13 == nil then
        f34_arg13 = true
    end
    if f34_arg4 and f34_arg5 and f34_arg6 and f34_arg7 and f34_arg8 and f34_arg9 and f34_arg10 and f34_arg11 and f34_arg12 and f34_arg13 then
        f34_arg0[f34_arg1] = f34_arg2
    else
        f34_arg0[f34_arg1] = f34_arg3
    end
    
end

function HAGI_InsideRange(ai, f35_arg1, f35_arg2, f35_arg3, f35_arg4)
    local distance = ai:GetOriginDist(TARGET_ENE_0)
    if f35_arg3 <= distance and distance <= f35_arg4 then
        local f35_local1 = ai:GetToTargetAngle(TARGET_ENE_0)
        local f35_local2 = 0
        if f35_arg1 < 0 then
            f35_local2 = -1
        else
            f35_local2 = 1
        end
        if f35_arg1 + f35_arg2 / -2 <= f35_local1 and f35_local1 <= f35_arg1 + f35_arg2 / 2 or f35_arg1 + f35_arg2 / -2 <= f35_local1 + 360 * f35_local2 and f35_local1 + 360 * f35_local2 <= f35_arg1 + f35_arg2 / 2 then
            return true
        else
            return false
        end
    else
        return false
    end
    
end

function HAGI_EventInsideRange(ai, f36_arg1, f36_arg2, f36_arg3, f36_arg4)
    local distance = ai:GetOriginDist(TARGET_EVENT)
    if f36_arg3 <= distance and distance <= f36_arg4 then
        local f36_local1 = ai:GetToTargetAngle(TARGET_EVENT)
        local f36_local2 = 0
        if f36_arg1 < 0 then
            f36_local2 = -1
        else
            f36_local2 = 1
        end
        if f36_arg1 + f36_arg2 / -2 <= f36_local1 and f36_local1 <= f36_arg1 + f36_arg2 / 2 or f36_arg1 + f36_arg2 / -2 <= f36_local1 + 360 * f36_local2 and f36_local1 + 360 * f36_local2 <= f36_arg1 + f36_arg2 / 2 then
            return true
        else
            return false
        end
    else
        return false
    end
    
end

function EZOP_DBChk_SpeedBullet(f37_arg0)
    
end

function EZOP_DBChk_PowerBullet(f38_arg0)
    
end

function EZOP_DBChk_HomingBullet(f39_arg0)
    
end

local f0_local0 = 99993200
local f0_local1 = 99993201
local f0_local2 = 99993202
local f0_local3 = 99993210
local f0_local4 = 99993220
local f0_local5 = 99993230

function EZOP_IsPossibleTurretMode(f40_arg0)
    return f40_arg0:HasSpecialEffectId(TARGET_SELF, f0_local0)
    
end

function EZOP_IsPossibleTurretMode_SpEffectCommandShot(f41_arg0)
    return f41_arg0:HasSpecialEffectId(TARGET_SELF, f0_local5)
    
end

function EZOP_IsTurretModeActive(f42_arg0)
    local f42_local0 = f42_arg0:GetNumber(VALUE_ID_EZOP_IsTurretMode)
    if f42_local0 > 0 then
        return true
    else
        return false
    end
    
end

function EZOP_InitializeTurretMode(f43_arg0)
    EZOP_UseInterrupt(f43_arg0, INTERUPT_Damaged)
    EZOP_UseInterrupt(f43_arg0, INTERUPT_ActivateSpecialEffect, TARGET_SELF, f0_local3)
    EZOP_UseInterrupt(f43_arg0, INTERUPT_ActivateSpecialEffect, TARGET_SELF, f0_local4)
    if f43_arg0:HasSpecialEffectId(TARGET_SELF, f0_local0) or f43_arg0:HasSpecialEffectId(TARGET_SELF, f0_local3) then
        f43_arg0:SetNumber(VALUE_ID_EZOP_IsTurretMode, 1)
    end
    
end

function EZOP_FinalizeTurretMode(f44_arg0)
    f44_arg0:SetNumber(VALUE_ID_EZOP_IsTurretMode, 0)
    
end

function EZOP_IsTurretMode(ai, f45_arg1)
    local f45_local0 = ai:GetNumber(VALUE_ID_EZOP_IsTurretMode)
    if ai:HasSpecialEffectId(TARGET_SELF, f0_local0) then
        if not ai:HasSpecialEffectId(TARGET_SELF, f0_local2) then
            local distance = ai:GetOriginDist(TARGET_ENE_0)
            local f45_local2 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__fixedCannonReleaseDistByDist)
            if f45_local2 > -1 then
                if distance < f45_local2 then
                    EZOP_FinalizeTurretMode(ai)
                    return false
                end
            elseif distance < f45_arg1 then
                EZOP_FinalizeTurretMode(ai)
                return false
            end
        end
        if f45_local0 > 0 then
            return true
        end
    end
    return false
    
end

function EZOP_ChkTurretMode(ai)
    if ai:HasSpecialEffectId(TARGET_SELF, f0_local0) then
        if ai:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            if ai:GetSpecialEffectActivateInterruptId(f0_local3) then
                EZOP_InitializeTurretMode(ai)
                EZOP_Replanning(ai)
            end
            if ai:GetSpecialEffectActivateInterruptId(f0_local4) then
                EZOP_FinalizeTurretMode(ai)
                EZOP_Replanning(ai)
            end
        end
        if not ai:HasSpecialEffectId(TARGET_SELF, f0_local1) and ai:GetNumber(VALUE_ID_EZOP_IsTurretMode) > 0 then
            local distance = ai:GetOriginDist(TARGET_ENE_0)
            local f46_local1 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__fixedCannonReleaseDistByHit)
            if ai:IsInterupt(INTERUPT_Damaged) then
                if f46_local1 > -1 then
                    if distance < f46_local1 then
                        EZOP_FinalizeTurretMode(ai)
                        EZOP_Replanning(ai)
                    end
                else
                    EZOP_FinalizeTurretMode(ai)
                    EZOP_Replanning(ai)
                end
            end
        end
    end
    
end

EZOP_ReactionType_WhenPlayerDies = {_UNIQUE = 0, _WAIT = 1, _WALK_TO_PLAYER = 2}

function EZOP_CommonReactionWhenPlayerDies_SetUp(f47_arg0, f47_arg1)
    if f47_arg0:HasSpecialEffectId(TARGET_SELF, 99993101) == false then
        return
    end
    OpSetArr[f47_arg1][980000] = function (f48_arg0, f48_arg1)
        local f48_local0 = EZOPArray.new()
        local f48_local1 = 1
        local f48_local2 = TARGET_SELF
        f48_local0:Add(EZOP_SetAct_ClearOperation(f48_arg0, f48_local1))
        return f48_local0
        
    end

    OpSetArr[f47_arg1][980010] = function (ai, f49_arg1)
        local f49_local0 = EZOPArray.new()
        local f49_local1 = ai:IsLanding()
        local distance = ai:GetDist(TARGET_ENE_0)
        if f49_local1 and distance > 50 then
            ai:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f49_local3 = 1
            local f49_local4 = TARGET_LOCALPLAYER
            local f49_local5 = AI_TURN_TARGET_TYPE_MOVING_DIRECTION
            local f49_local6 = EZOP_MOVETYPE._WALK
            local f49_local7 = 50
            local f49_local8 = {}

            local f49_local9 = function (f50_arg0)
                
            end

            local f49_local10 = nil
            local f49_local11 = nil
            local f49_local12 = {0, 360, -10, 9999}
            local f49_local13 = false
            f49_local0:Add(EZOP_SetAct_ApproachTarget(ai, f49_local3, f49_local4, f49_local5, f49_local6, f49_local7, f49_local8, f49_local9, f49_local10, f49_local11, f49_local12, TransAct, f49_local13))
        else
            local f49_local3 = 1
            local f49_local4 = TARGET_SELF
            f49_local0:Add(EZOP_SetAct_Wait(ai, f49_local3, f49_local4))
        end
        return f49_local0
        
    end

    
end

function EZOP_CommonReactionWhenPlayerDies(f51_arg0, f51_arg1, f51_arg2)
    if f51_arg0:GetHp(TARGET_ENE_0) > 0 or f51_arg0:HasSpecialEffectId(TARGET_SELF, 99993101) == false or f51_arg0:GetBattleState() == AI_BATTLE_STATE_TYPE_BATTLE then
        return false
    end
    if f51_arg2 == EZOP_ReactionType_WhenPlayerDies._WAIT then
        f51_arg1[980000] = 100
    elseif f51_arg2 == EZOP_ReactionType_WhenPlayerDies._WALK_TO_PLAYER then
        f51_arg1[980010] = 100
    else
    end
    return true
    
end

function EZOP_IsSearchEvAssetShootPoint(f52_arg0)
    return f52_arg0:HasSpecialEffectId(TARGET_SELF, 99993400)
    
end

function EZOP_IsLocalPlayerSearchEvAssetShootPoint(f53_arg0)
    return f53_arg0:HasSpecialEffectId(TARGET_ENE_0, 99993410)
    
end

function EZOP_IsNpcAcDamaged_Stagger_S(f54_arg0)
    return f54_arg0:HasSpecialEffectId(TARGET_SELF, 99997000)
    
end

function EZOP_IsNpcAcDamaged_Stagger_L(f55_arg0)
    return f55_arg0:HasSpecialEffectId(TARGET_SELF, 99997010)
    
end

function EZOP_IsNpcAcDamaged_BlowAway(f56_arg0)
    return f56_arg0:HasSpecialEffectId(TARGET_SELF, 99997020)
    
end

function EZOP_IsNpcAcDamaged_GuardBreak(f57_arg0)
    return f57_arg0:HasSpecialEffectId(TARGET_SELF, 99997030)
    
end

function EZOP_IsNpcAcHovering(f58_arg0)
    return not (f58_arg0:GetBehaviorActionType(TARGET_SELF) ~= AiActionType_NPAC_Hover)
    
end

function EZOP_IsNpcAcAssultBoosting(f59_arg0)
    return not (f59_arg0:GetBehaviorActionType(TARGET_SELF) ~= AiActionType_AssultBoosting)
    
end

function EZOP_ChkFunc_Success(f60_arg0, f60_arg1, f60_arg2)
    return "next"
    
end

function EZOP_ChkFunc_Failure(f61_arg0, f61_arg1, f61_arg2)
    return nil
    
end

function EZOP_ChkFunc_TargetDist(f62_arg0, f62_arg1, f62_arg2)
    local f62_local0 = f62_arg2[1]
    if f62_arg0:GetDist(TARGET_ENE_0) < f62_local0 then
        return "next"
    else
        return nil
    end
    
end

function EZOP_ChkFunc_InsideRange(f63_arg0, f63_arg1, f63_arg2)
    local f63_local0 = f63_arg2[1]
    local f63_local1 = f63_arg2[2]
    local f63_local2 = f63_arg2[3]
    local f63_local3 = f63_arg2[4]
    if EZOP_InsideRange(f63_arg0, f63_local0, f63_local1, f63_local2, f63_local3) then
        return "next"
    else
        return nil
    end
    
end

function ChkFunc_HAGI_InsideRange(f64_arg0, f64_arg1, f64_arg2)
    local f64_local0 = f64_arg2[1]
    local f64_local1 = f64_arg2[2]
    local f64_local2 = f64_arg2[3]
    local f64_local3 = f64_arg2[4]
    if HAGI_InsideRange(f64_arg0, f64_local0, f64_local1, f64_local2, f64_local3) then
        return "next"
    else
        return nil
    end
    
end

function EZOP_GetCurrentOpID(f65_arg0)
    return f65_arg0:GetNumber(VALUE_ID_OP_SET_TABLE_ID)
    
end

function EZOP_CFAF_IsInsideTarget(f66_arg0, f66_arg1)
    local f66_local0 = f66_arg1[1]
    local f66_local1 = f66_arg1[2]
    local f66_local2 = f66_arg1[3]
    local f66_local3 = f66_arg1[4]
    local f66_local4 = f66_arg1[5]
    local f66_local5 = f66_arg1[6]
    if f66_local5 == nil or f66_local5 == false then
        return f66_arg0:IsInsideTargetEx(f66_local0, f66_local1, f66_local2, f66_local3, f66_local4)
    else
        return not f66_arg0:IsInsideTargetEx(f66_local0, f66_local1, f66_local2, f66_local3, f66_local4)
    end
    
end

function EZOP_CFAF_IsFrontTarget(f67_arg0, f67_arg1)
    local f67_local0 = TARGET_SELF
    local f67_local1 = f67_arg1[1]
    local f67_local2 = AI_DIR_TYPE_F
    local f67_local3 = f67_arg1[2]
    local f67_local4 = f67_arg1[3]
    local f67_local5 = f67_arg1[4]
    return EZOP_CFAF_IsInsideTarget(f67_arg0, {f67_local0, f67_local1, f67_local2, f67_local3, f67_local4, f67_local5})
    
end

function EZOP_CFAF_IsBackTarget(f68_arg0, f68_arg1)
    local f68_local0 = TARGET_SELF
    local f68_local1 = f68_arg1[1]
    local f68_local2 = AI_DIR_TYPE_B
    local f68_local3 = f68_arg1[2]
    local f68_local4 = f68_arg1[3]
    local f68_local5 = f68_arg1[4]
    return EZOP_CFAF_IsInsideTarget(f68_arg0, {f68_local0, f68_local1, f68_local2, f68_local3, f68_local4, f68_local5})
    
end

function EZOP_CFAF_IsLeftTarget(f69_arg0, f69_arg1)
    local f69_local0 = TARGET_SELF
    local f69_local1 = f69_arg1[1]
    local f69_local2 = AI_DIR_TYPE_L
    local f69_local3 = f69_arg1[2]
    local f69_local4 = f69_arg1[3]
    local f69_local5 = f69_arg1[4]
    return EZOP_CFAF_IsInsideTarget(f69_arg0, {f69_local0, f69_local1, f69_local2, f69_local3, f69_local4, f69_local5})
    
end

function EZOP_CFAF_IsRightTarget(f70_arg0, f70_arg1)
    local f70_local0 = TARGET_SELF
    local f70_local1 = f70_arg1[1]
    local f70_local2 = AI_DIR_TYPE_R
    local f70_local3 = f70_arg1[2]
    local f70_local4 = f70_arg1[3]
    local f70_local5 = f70_arg1[4]
    return EZOP_CFAF_IsInsideTarget(f70_arg0, {f70_local0, f70_local1, f70_local2, f70_local3, f70_local4, f70_local5})
    
end

function EZOP_DBG_DebugInputParam(f71_arg0, f71_arg1)
    return f71_arg0:GetNumber(f71_arg1)
    
end

PRINT_TEXT(LogHeader_Plan .. "UsefulFunc: UsefulFunc OK")
PRINT_TEXT("-----" .. LogHeader_Plan .. "UsefulFunc Complete-----")

