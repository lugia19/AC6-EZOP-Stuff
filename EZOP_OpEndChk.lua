--I believe these are all functions that "Check" values to end an action, hence the name.

local f0_local0 = function(f1_arg0, f1_arg1, f1_arg2)
    local f1_local0 = table.getn(f1_arg2)
    if f1_arg0:GetNumber(VALUE_ID_CHECKABLE_TAEFLAGS) < 1 then
        for f1_local1 = 1, f1_local0, 1 do
            local f1_local4 = f1_arg2[f1_local1]
            if f1_arg0:IsSlotCancelFlagEnabled(f1_arg1, f1_local4) then
                return false
            end
        end
        f1_arg0:SetNumber(VALUE_ID_CHECKABLE_TAEFLAGS, 1)
    end
    for f1_local1 = 1, f1_local0, 1 do
        local f1_local4 = f1_arg2[f1_local1]
        if f1_arg0:IsSlotCancelFlagEnabled(f1_arg1, f1_local4) then
            return true
        end
    end
    return false
end

local f0_local1 = function(f2_arg0, f2_arg1, f2_arg2, f2_arg3)
    return ai:IsInsideTargetEx(TARGET_SELF, f2_arg0, f2_arg1, f2_arg2, f2_arg3)
end

function EZOP_OpEndChk_SearchCoverPoint(f3_arg0, f3_arg1, f3_arg2)
    local f3_local0 = f3_arg2[1]
    local f3_local1 = f3_arg2[2]
    local f3_local2 = f3_arg2[3]
    if EZOP_IsPointReserved(f3_arg0) and EZOP_PointCheck_CoverAsync(f3_arg0, POINT_AIDestPoint_Reserve, f3_local0) then
        return true
    else
        local f3_local3 = f3_arg0:GetNumber(VALUE_ID_LOGIC_ID)
        local f3_local4 = EZOP_GetInstanceHandle(f3_arg0)
        local f3_local5 = table.getn(EZOP_AsyncNavCheckTargetSet[f3_local3][f3_local4])
        if f3_local5 <= 0 then
            f3_arg0:SetTimer(f3_local1, f3_local2)
            return true
        end
        for f3_local6 = 1, f3_local5, 1 do
            local f3_local9 = EZOP_AsyncNavCheckTargetSet[f3_local3][f3_local4][f3_local6][1]
            if f3_arg0:CheckPathAsyncResult(f3_local9) == AI_PATH_FINDING_STATE_Succeeded then
                local f3_local10 = EZOP_AsyncNavCheckTargetSet[f3_local3][f3_local4][f3_local6][2]
                EZOP_ReservePoint(f3_arg0, f3_local10)
                return true
            end
        end
        return false
    end
end

function EZOP_OpEndChk_SearchCoverPoint_PathCheckForceEnd(f4_arg0, f4_arg1, f4_arg2)
    local f4_local0 = f4_arg2[1]
    local f4_local1 = f4_arg2[2]
    local f4_local2 = f4_arg2[3]
    local f4_local3 = f4_arg0:GetNumber(VALUE_ID_OP_ACTION_TIMEOUT)
    if f4_local3 < 0.3 then
        f4_arg0:SetTimer(f4_local1, f4_local2)
        return true
    end
    return false
end

function EZOP_OpEndChk_SearchMovePoint(f5_arg0, f5_arg1, f5_arg2)
    local f5_local0 = f5_arg2[1]
    local f5_local1 = f5_arg2[2]
    local f5_local2 = f5_arg2[3]
    local f5_local3 = f5_arg0:GetNumber(VALUE_ID_LOGIC_ID)
    local f5_local4 = EZOP_GetInstanceHandle(f5_arg0)
    local f5_local5 = table.getn(EZOP_AsyncNavCheckTargetSet[f5_local3][f5_local4])
    for f5_local6 = 1, f5_local5, 1 do
        local f5_local9 = EZOP_AsyncNavCheckTargetSet[f5_local3][f5_local4][f5_local6][1]
        if f5_arg0:CheckPathAsyncResult(f5_local9) == AI_PATH_FINDING_STATE_Succeeded then
            local f5_local10 = EZOP_AsyncNavCheckTargetSet[f5_local3][f5_local4][f5_local6][2]
            f5_arg0:KeepAiRuntimePoint(f5_local10)
            return true
        end
    end
    return false
end

function EZOP_OpEndChk_SearchShootAssetPoint(f6_arg0, f6_arg1, f6_arg2)
    local f6_local0 = f6_arg2[1]
    local f6_local1 = f6_arg2[2]
    local f6_local2 = f6_arg2[3]
    if EZOP_IsPointReserved(f6_arg0) and EZOP_PointCheck_ShootAssetAsync(f6_arg0, POINT_AIDestPoint_Reserve, f6_local0) then
        return true
    else
        local f6_local3 = f6_arg0:GetNumber(VALUE_ID_LOGIC_ID)
        local f6_local4 = EZOP_GetInstanceHandle(f6_arg0)
        local f6_local5 = table.getn(EZOP_AsyncNavCheckTargetSet[f6_local3][f6_local4])
        if f6_local5 <= 0 then
            f6_arg0:SetTimer(f6_local1, f6_local2)
            return true
        end
        local f6_local6 = EZOP_AsyncNavCheckTargetSet[f6_local3][f6_local4][1][2]
        EZOP_ReservePoint(f6_arg0, f6_local6)
        return true
    end
end

function EZOP_OpEndChk_SearchShootAssetPoint_PathCheckForceEnd(f7_arg0, f7_arg1, f7_arg2)
    local f7_local0 = f7_arg2[1]
    local f7_local1 = f7_arg2[2]
    local f7_local2 = f7_arg2[3]
    local f7_local3 = f7_arg0:GetNumber(VALUE_ID_OP_ACTION_TIMEOUT)
    if f7_local3 < 0.3 then
        f7_arg0:SetTimer(f7_local1, f7_local2)
        return true
    end
    return false
end

function EZOP_OpEndChk_InsideRange(f8_arg0, f8_arg1, f8_arg2)
    local f8_local0 = f8_arg2[1]
    local f8_local1 = f8_arg2[2]
    local f8_local2 = f8_arg2[3]
    local f8_local3 = f8_arg2[4]
    if EZOP_InsideRange(f8_arg0, f8_local0, f8_local1, f8_local2, f8_local3) then
        return true
    else
        return false
    end
end

function EZOP_OpEndChk_CloserThan(ai, f9_arg1, args_table) --commented
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

function EZOP_OpEndChk_CloserThanXZ(ai, f10_arg1, args_table) --commented
    local target = nil
    if type(args_table[1]) == "table" then
        target = args_table[1][1]
    else
        target = args_table[1]
    end
    local distance_arg = args_table[2]
    local arrive_judge_type = args_table[3]
    return EZOP_LocalOpFunc_GetDist(ai, target, arrive_judge_type, true) < distance_arg
end

function EZOP_OpEndChk_CloserThan_RoutePoint(ai, f11_arg1, args_table) --commented
    local target = nil
    if type(args_table[1]) == "table" then
        target = args_table[1][1]
    else
        target = args_table[1]
    end
    local distance_arg = args_table[2]
    local arrive_judge_type = args_table[3]
    local actual_dist = EZOP_LocalOpFunc_GetDist(ai, target, arrive_judge_type, false)
    if actual_dist < distance_arg then
        ai:StepNextMovePoint()
        ai:ResetInitialPosition()
        return true
    else
        return false
    end
end

function EZOP_OpEndChk_FartherThan(ai, f12_arg1, args_table) --commented
    local target = nil
    if type(args_table[1]) == "table" then
        target = args_table[1][1]
    else
        target = args_table[1]
    end
    local distance_arg = args_table[2]
    local arrive_judge_type = args_table[3]
    return distance_arg < EZOP_LocalOpFunc_GetDist(ai, target, arrive_judge_type, false)
end

function EZOP_OpEndChk_FartherThanXZ(ai, f13_arg1, args_table) --commented
    local target = nil
    if type(args_table[1]) == "table" then
        target = args_table[1][1]
    else
        target = args_table[1]
    end
    local distance_arg = args_table[2]
    local arrive_judge_type = args_table[3]
    return distance_arg < EZOP_LocalOpFunc_GetDist(ai, target, arrive_judge_type, true)
end

function EZOP_OpEndChk_IsInsideAngle(f14_arg0, f14_arg1, f14_arg2)
    local f14_local0 = f14_arg2[1]
    local f14_local1 = f14_arg2[2]
    local f14_local2 = f14_arg2[3]
    local f14_local3 = 999999
    return f14_arg0:IsInsideTargetEx(TARGET_SELF, f14_local0, f14_local2, f14_local1, f14_local3)
end

function EZOP_OpEndChk_HasSpecialEffect(f15_arg0, f15_arg1, f15_arg2)
    local f15_local0 = nil
    if type(f15_arg2[1]) == "table" then
        f15_local0 = f15_arg2[1][1]
    else
        f15_local0 = f15_arg2[1]
    end
    local f15_local1 = f15_arg2[2]
    return EZOP_HasAnySpecialEffect(f15_arg0, f15_local0, f15_local1)
end

function EZOP_OpEndChk_IsLanding(f16_arg0, f16_arg1, f16_arg2)
    local f16_local0 = f16_arg2[1]
    local f16_local1 = f16_arg2[2]
    return not (f16_arg0:IsLanding() ~= f16_local1)
end

function EZOP_OpEndChk_ChkTargetHeight(f17_arg0, f17_arg1, f17_arg2)
    local f17_local0 = f17_arg2[1]
    local f17_local1 = f17_arg2[2]
    local f17_local2 = f17_arg2[3]
    if f17_local2 then
        return f17_local1 < f17_arg0:GetHeightFromGround(f17_local0)
    else
        return f17_arg0:GetHeightFromGround(f17_local0) < f17_local1
    end
end

function EZOP_OpEndChk_HasTAECanselFrags_Success(f18_arg0, f18_arg1, f18_arg2)
    local f18_local0 = f18_arg2[1]
    local f18_local1 = f18_arg2[2]
    local f18_local2 = f18_arg2[3]
    local f18_local3 = f18_arg2[4]
    local f18_local4 = nil
    if f18_local2 ~= nil then
        local f18_local5 = f0_local0(f18_arg0, f18_local0, f18_local1)
        if f18_local5 then
            f18_local4 = f18_local5
        else
            f18_local4 = f18_local2(f18_arg0, f18_local3)
        end
    else
        f18_local4 = f0_local0(f18_arg0, f18_local0, f18_local1)
    end
    return f18_local4
end

function EZOP_OpEndChk_HasTAECanselFrags_Failure(f19_arg0, f19_arg1, f19_arg2)
    local f19_local0 = f19_arg2[1]
    local f19_local1 = f19_arg2[2]
    local f19_local2 = f19_arg2[3]
    local f19_local3 = f19_arg2[4]
    local f19_local4 = nil
    if f19_local2 ~= nil then
        local f19_local5 = f0_local0(f19_arg0, f19_local0, f19_local1)
        if f19_local5 then
            f19_local4 = f19_local5
        else
            f19_local4 = not f19_local2(f19_arg0, f19_local3)
        end
    else
        f19_local4 = f0_local0(f19_arg0, f19_local0, f19_local1)
    end
    return f19_local4
end

function EZOP_OpEndChk_IsInsideAngleFromDP(f20_arg0, f20_arg1, f20_arg2)
    local f20_local0 = nil
    if type(f20_arg2[1]) == "table" then
        f20_local0 = f20_arg2[1][1]
    else
        f20_local0 = f20_arg2[1]
    end
    local f20_local1 = f20_arg2[2]
    local f20_local2 = f20_arg2[3]
    local f20_local3 = f20_arg0:GetAngleHorizonFromDummyPoly(f20_local0, f20_local1)
    local f20_local4 = f20_arg0:GetAngleVirticalFromDummyPoly(f20_local0, f20_local1)
    return not (not (-f20_local2 < f20_local3) or not (f20_local3 < f20_local2) or not (-f20_local2 < f20_local4) or not (f20_local4 < f20_local2))
end

function EZOP_OpEndChk_IsFinishTimer(f21_arg0, f21_arg1, f21_arg2)
    return f21_arg0:IsFinishTimer(f21_arg2[1])
end

function EZOP_OpEndChk_IsNotFinishTimer(f22_arg0, f22_arg1, f22_arg2)
    return not f22_arg0:IsFinishTimer(f22_arg2[1])
end

function EZOP_OpEndChk_IsFinishCharge(f23_arg0, f23_arg1, f23_arg2)
    local f23_local0 = f23_arg0:IsFinishTimer(f23_arg2[1])
    local f23_local1 = nil
    if type(f23_arg2[1]) == "table" then
        f23_local1 = f23_arg2[1][1]
    else
        f23_local1 = f23_arg2[1]
    end
    local f23_local2 = f23_arg2[3]
    local f23_local3 = f23_arg2[4]
    local f23_local4 = f23_arg0:GetAngleHorizonFromDummyPoly(f23_local1, f23_local2)
    local f23_local5 = f23_arg0:GetAngleVirticalFromDummyPoly(f23_local1, f23_local2)
    local f23_local6 = not (not (-f23_local3 < f23_local4) or not (f23_local4 < f23_local3) or not (-f23_local3 < f23_local5) or not (f23_local5 < f23_local3))
    local f23_local7
    if f23_local0 then
        f23_local7 = f23_local0
    else
        f23_local7 = f23_local6
    end
    return f23_local7
end

function EZOP_OpEndChk_PointCheck_Cover(f24_arg0, f24_arg1, f24_arg2)
    local f24_local0 = f24_arg2[1]
    local f24_local1 = f24_arg2[2]
    local f24_local2 = f24_arg2[3]
    local f24_local3 = f24_arg2[4]
    if EZOP_PointCheck_Cover(f24_arg0, f24_local0, f24_local1, -1) then
        return false
    else
        EZOP_UnreservePoint(f24_arg0)
        f24_arg0:SetTimer(f24_local2, f24_local3)
        return true
    end
end

function EZOP_OpEndChk_PointCheck_Snipe(f25_arg0, f25_arg1, f25_arg2)
    local f25_local0 = f25_arg2[1]
    local f25_local1 = f25_arg2[2]
    local f25_local2 = f25_arg2[3]
    local f25_local3 = f25_arg2[4]
    if EZOP_PointCheck_Snipe(f25_arg0, f25_local0, f25_local1) then
        return false
    else
        EZOP_UnreservePoint(f25_arg0)
        f25_arg0:SetTimer(f25_local2, f25_local3)
        return true
    end
end

function EZOP_OpEndChk_SwitchMode(f26_arg0, f26_arg1, f26_arg2)
    local f26_local0 = f26_arg2[1]
    local f26_local1 = f26_arg2[2]
    local f26_local2 = f26_arg2[3]
    if EZOP_HasAnySpecialEffect(f26_arg0, f26_local0, f26_local1) then
        if f26_local2 ~= nil then
            local f26_local3 = f26_local2[1]
            f26_arg0:SetNaviRouteSearchType(f26_local3)
        end
        return true
    end
    return false
end

function EZOP_OpEndChk_Jump(f27_arg0, f27_arg1, f27_arg2)
    local f27_local0 = f27_arg0:GetNumber(VALUE_ID_JUMP_CHECK)
    if f27_local0 < 1 then
        if f27_arg0:GetBehaviorActionType(TARGET_SELF) == 240 then
            f27_arg0:SetNumber(VALUE_ID_JUMP_CHECK, 1)
        end
    elseif f27_arg0:GetBehaviorActionType(TARGET_SELF) ~= 240 then
        f27_arg0:SetNumber(VALUE_ID_JUMP_CHECK, 0)
        return true
    end
    return false
end

local f0_local2 = function(f28_arg0)
    local f28_local0 = f28_arg0:GetSpecialEffectDeActivateInterruptId(8000)
    if not f28_local0 then
        f28_local0 = f28_arg0:GetSpecialEffectDeActivateInterruptId(8001)
        if not f28_local0 then
            f28_local0 = f28_arg0:GetSpecialEffectDeActivateInterruptId(8002)
            if not f28_local0 then
                f28_local0 = f28_arg0:GetSpecialEffectDeActivateInterruptId(8010)
                if not f28_local0 then
                    f28_local0 = f28_arg0:GetSpecialEffectDeActivateInterruptId(8011)
                    if not f28_local0 then
                        f28_local0 = f28_arg0:GetSpecialEffectDeActivateInterruptId(8020)
                        if not f28_local0 then
                            f28_local0 = f28_arg0:GetSpecialEffectDeActivateInterruptId(8021)
                        end
                    end
                end
            end
        end
    end
    return f28_local0
end

function EZOP_OpEndChk_IsNotFrontTarget_CancelFlagInterrupt(f29_arg0, f29_arg1, f29_arg2)
    local f29_local0 = f29_arg2[1]
    local f29_local1 = f29_arg2[2]
    local f29_local2 = f29_arg2[3]
    local f29_local3 = f29_arg2[4]
    if f0_local2(f29_arg0) then
        return not f29_arg0:IsInsideTargetEx(TARGET_SELF, f29_local0, f29_local1, f29_local2, f29_local3)
    end
    return false
end

PRINT_TEXT(LogHeader_Plan .. "OpEndChk: OpEndChkFunc OK")
PRINT_TEXT("-----" .. LogHeader_Plan .. "OpEndChk Complete-----")
