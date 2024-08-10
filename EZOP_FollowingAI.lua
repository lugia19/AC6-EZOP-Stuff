function EZOP_FollowingAI_IsFollowing(ai)
    local distance = ai:GetDist(TARGET_ENE_0)
    local distance2 = ai:GetDist(TARGET_EVENT)
    local distance3 = ai:GetDist(TARGET_LOCALPLAYER)
    local f1_local3 = ai:GetExcelParam(42)
    local f1_local4 = ai:GetExcelParam(43)
    local f1_local5 = ai:GetExcelParam(44)
    local f1_local6 = ai:GetExcelParam(45)
    local f1_local7 = ai:GetExcelParam(46)
    local f1_local8 = ai:GetExcelParam(47)
    if ai:HasSpecialEffectId(TARGET_SELF, 99995000) then
        if ai:IsInsideTarget(TARGET_EVENT, AI_DIR_TYPE_F, 360) == true then
            if f1_local5 < distance2 then
                return true
            elseif f1_local4 < distance2 then
                if ai:GetBattleState() >= 2 and distance < f1_local3 then
                    return false
                else
                    return true
                end
            elseif ai:GetBattleState() < 2 then
                return true
            else
                return false
            end
        elseif f1_local8 < distance3 then
            return true
        elseif f1_local7 < distance3 then
            if ai:GetBattleState() >= 2 and distance < f1_local6 then
                return false
            else
                return true
            end
        elseif ai:GetBattleState() < 2 then
            return true
        else
            return false
        end
    else
        return false
    end
    
end

function EZOP_FollowingAI_MoveToTarget(ai, f2_arg1)
    local distance = ai:GetDist(TARGET_ENE_0)
    local distance2 = ai:GetDist(TARGET_EVENT)
    local f2_local2 = ai:GetDistY(TARGET_EVENT)
    local f2_local3 = ai:GetHeightFromGround(TARGET_EVENT)
    local distance3 = ai:GetDist(TARGET_LOCALPLAYER)
    local f2_local5 = ai:GetDistY(TARGET_LOCALPLAYER)
    local f2_local6 = ai:GetHeightFromGround(TARGET_LOCALPLAYER)
    local f2_local7 = ai:GetHeightFromGround(TARGET_SELF)
    local f2_local8 = ai:GetEnRate(TARGET_SELF)
    local f2_local9 = ai:GetExcelParam(41)
    local f2_local10 = ai:GetExcelParam(42)
    local f2_local11 = ai:GetExcelParam(43)
    local f2_local12 = ai:GetExcelParam(44)
    local f2_local13 = ai:GetExcelParam(45)
    local f2_local14 = ai:GetExcelParam(46)
    local f2_local15 = ai:GetExcelParam(47)
    if ai:HasSpecialEffectId(TARGET_SELF, 9151) and ai:IsFinishTimer(5) then
        f2_arg1[999151] = 100
    elseif ai:IsInsideTarget(TARGET_EVENT, AI_DIR_TYPE_F, 360) == true then
        if f2_local12 < distance2 then
            if ai:HasSpecialEffectId(TARGET_SELF, 29990000) and ai:IsLOSokAtoB_NaviVolume(TARGET_SELF, TARGET_EVENT) and f2_local8 > 0.75 then
                f2_arg1[992003] = 100
            elseif f2_local7 > 50 then
                f2_arg1[992002] = 100
            elseif ai:GetTimer(9) > 0 then
                f2_arg1[992002] = 100
            else
                f2_arg1[992001] = 100
            end
        elseif f2_local11 < distance2 then
            if ai:GetBattleState() >= 2 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == true and HAGI_InsideRange(ai, 0, 90, 0, 999) and ai:IsLOSokAtoB(TARGET_SELF, 0, TARGET_ENE_0, 0) and distance < f2_local9 then
                if f2_local7 > 50 then
                    f2_arg1[992112] = 100
                elseif ai:GetTimer(9) > 0 then
                    f2_arg1[992112] = 100
                else
                    f2_arg1[992111] = 100
                end
            elseif f2_local7 > 500 then
                f2_arg1[992102] = 100
            elseif ai:GetTimer(9) > 0 then
                f2_arg1[992102] = 100
            else
                f2_arg1[992011] = 100
            end
        elseif f2_local3 < 50 and f2_local7 > 100 then
            f2_arg1[990101] = 100
        elseif f2_local3 > 200 and f2_local2 > 100 then
            f2_arg1[990002] = 100
        else
            f2_arg1[990000] = 100
        end
    elseif f2_local15 < distance3 then
        if ai:HasSpecialEffectId(TARGET_SELF, 29990000) and ai:IsLOSokAtoB_NaviVolume(TARGET_SELF, TARGET_LOCALPLAYER) and f2_local8 > 0.75 then
            f2_arg1[991003] = 100
        elseif f2_local7 > 500 then
            f2_arg1[991002] = 100
        elseif ai:GetTimer(9) > 0 then
            f2_arg1[991002] = 100
        else
            f2_arg1[991001] = 100
        end
    elseif f2_local14 < distance3 then
        if ai:GetBattleState() >= 2 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == true and HAGI_InsideRange(ai, 0, 90, 0, 999) and ai:IsLOSokAtoB(TARGET_SELF, 0, TARGET_ENE_0, 0) and distance < f2_local9 then
            if f2_local7 > 500 then
                f2_arg1[991112] = 100
            elseif ai:GetTimer(9) > 0 then
                f2_arg1[991112] = 100
            else
                f2_arg1[991111] = 100
            end
        elseif f2_local7 > 500 then
            f2_arg1[991012] = 100
        elseif ai:GetTimer(9) > 0 then
            f2_arg1[991012] = 100
        else
            f2_arg1[991011] = 100
        end
    elseif f2_local6 < 50 and f2_local7 > 100 then
        f2_arg1[990001] = 100
    elseif f2_local6 > 200 and f2_local5 > 100 then
        f2_arg1[990002] = 100
    else
        f2_arg1[990000] = 100
    end
    
end

function EZOP_FollowingAI_SetUp(f3_arg0, f3_arg1)
    OpSetArr[f3_arg1][990000] = function (f4_arg0, f4_arg1)
        local f4_local0 = EZOPArray.new()
        if f4_arg0:HasSpecialEffectId(TARGET_SELF, 9151) then
            local f4_local1 = TARGET_ENE_0
            local f4_local2 = 1
            local f4_local3 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0)}
            f4_local0:Add(EZOP_SetAct_StandShoot(f4_arg0, f4_local2, f4_local1, f4_local3))
        else
            local f4_local1 = 1
            local f4_local2 = TARGET_SELF
            f4_local0:Add(EZOP_SetAct_Wait(f4_arg0, f4_local1, f4_local2))
        end
        return f4_local0
        
    end

    OpSetArr[f3_arg1][990001] = function (f5_arg0, f5_arg1)
        local f5_local0 = EZOPArray.new()
        f5_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
        if f5_arg0:HasSpecialEffectId(TARGET_SELF, 9151) then
            local f5_local1 = 1
            local f5_local2 = TARGET_LOCALPLAYER
            local f5_local3 = 0
            local f5_local4 = 0
            local f5_local5 = 0
            local f5_local6 = TARGET_LOCALPLAYER
            local f5_local7 = EZOP_MOVETYPE._BOOST
            local f5_local8 = 25
            local f5_local9 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0)}

            local f5_local10 = function (f6_arg0)
                
            end

            local f5_local11 = nil
            local f5_local12 = EZOP_ChkFunc_InsideRange
            local f5_local13 = {0, 360, -10, 9999}
            local f5_local14 = true
            local f5_local15 = false
            f5_local0:Add(EZOP_SetAct_ApproachBoostRise(f5_arg0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7, f5_local8, f5_local9, f5_local10, f5_local11, f5_local12, f5_local13, TransAct, f5_local14, f5_local15))
        else
            local f5_local1 = 1
            local f5_local2 = TARGET_LOCALPLAYER
            local f5_local3 = 0
            local f5_local4 = 0
            local f5_local5 = 0
            local f5_local6 = TARGET_LOCALPLAYER
            local f5_local7 = EZOP_MOVETYPE._BOOST
            local f5_local8 = 25
            local f5_local9 = {}

            local f5_local10 = function (f7_arg0)
                
            end

            local f5_local11 = nil
            local f5_local12 = EZOP_ChkFunc_InsideRange
            local f5_local13 = {0, 360, -10, 9999}
            local f5_local14 = true
            local f5_local15 = false
            f5_local0:Add(EZOP_SetAct_ApproachBoostRise(f5_arg0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7, f5_local8, f5_local9, f5_local10, f5_local11, f5_local12, f5_local13, TransAct, f5_local14, f5_local15))
        end
        return f5_local0
        
    end

    OpSetArr[f3_arg1][990002] = function (f8_arg0, f8_arg1)
        local f8_local0 = EZOPArray.new()
        f8_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
        if f8_arg0:HasSpecialEffectId(TARGET_SELF, 9151) then
            local f8_local1 = TARGET_ENE_0
            local f8_local2 = 1
            local f8_local3 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0)}
            f8_local0:Add(EZOP_SetAct_StandShoot(f8_arg0, f8_local2, f8_local1, f8_local3))
        else
            local f8_local1 = 1
            local f8_local2 = TARGET_SELF
            local f8_local3 = 0
            local f8_local4 = 0
            local f8_local5 = f8_arg0:GetHeightFromLastLandingPos(TARGET_SELF)
            local f8_local6 = TARGET_SELF
            local f8_local7 = EZOP_MOVETYPE._BOOST
            local f8_local8 = 0
            local f8_local9 = {}

            local f8_local10 = function (f9_arg0)
                
            end

            local f8_local11 = nil
            local f8_local12 = EZOP_ChkFunc_InsideRange
            local f8_local13 = {0, 360, -10, 9999}
            local f8_local14 = true
            local f8_local15 = false
            f8_local0:Add(EZOP_SetAct_ApproachBoostRise(f8_arg0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7, f8_local8, f8_local9, f8_local10, f8_local11, f8_local12, f8_local13, TransAct, f8_local14, f8_local15))
        end
        return f8_local0
        
    end

    OpSetArr[f3_arg1][990100] = function (f10_arg0, f10_arg1)
        local f10_local0 = EZOPArray.new()
        local f10_local1 = 1
        local f10_local2 = TARGET_SELF
        f10_local0:Add(EZOP_SetAct_Wait(f10_arg0, f10_local1, f10_local2))
        return f10_local0
        
    end

    OpSetArr[f3_arg1][990101] = function (f11_arg0, f11_arg1)
        local f11_local0 = EZOPArray.new()
        f11_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
        local f11_local1 = 1
        local f11_local2 = TARGET_EVENT
        local f11_local3 = 0
        local f11_local4 = 0
        local f11_local5 = 0
        local f11_local6 = TARGET_EVENT
        local f11_local7 = EZOP_MOVETYPE._BOOST
        local f11_local8 = 25
        local f11_local9 = {}

        local f11_local10 = function (f12_arg0)
            
        end

        local f11_local11 = nil
        local f11_local12 = EZOP_ChkFunc_InsideRange
        local f11_local13 = {0, 360, -10, 9999}
        local f11_local14 = true
        local f11_local15 = false
        f11_local0:Add(EZOP_SetAct_ApproachBoostRise(f11_arg0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7, f11_local8, f11_local9, f11_local10, f11_local11, f11_local12, f11_local13, TransAct, f11_local14, f11_local15))
        return f11_local0
        
    end

    OpSetArr[f3_arg1][990102] = function (f13_arg0, f13_arg1)
        local f13_local0 = EZOPArray.new()
        f13_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
        local f13_local1 = 1
        local f13_local2 = TARGET_SELF
        local f13_local3 = 0
        local f13_local4 = 0
        local f13_local5 = 0
        local f13_local6 = AI_TURN_TARGET_TYPE_MOVING_DIRECTION
        local f13_local7 = EZOP_MOVETYPE._BOOST
        local f13_local8 = 0
        local f13_local9 = {}

        local f13_local10 = function (f14_arg0)
            
        end

        local f13_local11 = nil
        local f13_local12 = EZOP_ChkFunc_InsideRange
        local f13_local13 = {0, 360, -10, 9999}
        local f13_local14 = true
        local f13_local15 = false
        f13_local0:Add(EZOP_SetAct_ApproachBoostRise(f13_arg0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7, f13_local8, f13_local9, f13_local10, f13_local11, f13_local12, f13_local13, TransAct, f13_local14, f13_local15))
        return f13_local0
        
    end

    OpSetArr[f3_arg1][991000] = function (ai, f15_arg1)
        local f15_local0 = EZOPArray.new()
        local distance = ai:GetDist(TARGET_LOCALPLAYER)
        local f15_local2 = ai:GetDistY(TARGET_LOCALPLAYER)
        local f15_local3 = ai:GetHeightFromGround(TARGET_LOCALPLAYER)
        local f15_local4 = ai:GetHeightFromGround(TARGET_SELF)
        local f15_local5 = ai:GetExcelParam(42)
        local f15_local6 = ai:GetExcelParam(43)
        local f15_local7 = ai:GetExcelParam(44)
        local f15_local8 = ai:GetExcelParam(45)
        local f15_local9 = ai:GetExcelParam(46)
        local f15_local10 = ai:GetExcelParam(47)
        if (f15_local10 < distance or f15_local10 < f15_local2) and ai:HasSpecialEffectId(TARGET_SELF, 29990000) then
            local f15_local11 = 10
            local f15_local12 = TARGET_LOCALPLAYER
            local f15_local13 = 0
            local f15_local14 = f15_local9
            local f15_local15 = -1
            local f15_local16 = 0
            local f15_local17 = 0
            local f15_local18 = false
            local f15_local19 = {}
            local f15_local20 = EZOP_ChkFunc_InsideRange
            local f15_local21 = {0, 360, -10, 9999}

            local f15_local22 = function (f16_arg0)
                
            end

            local f15_local23 = nil
            f15_local0:Add(EZOP_SetAct_NPC_AssultBoost(ai, f15_local11, f15_local12, f15_local13, f15_local14, f15_local15, f15_local16, f15_local17, f15_local18, f15_local19, f15_local20, f15_local21, f15_local22, f15_local23, TransAct))
        elseif f15_local10 < distance or f15_local10 < f15_local2 then
            if f15_local3 < 100 and f15_local2 < 100 and f15_local4 < 100 then
                ai:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                local f15_local11 = 1
                local f15_local12 = TARGET_LOCALPLAYER
                local f15_local13 = AI_TURN_TARGET_TYPE_MOVING_DIRECTION
                local f15_local14 = EZOP_MOVETYPE._BOOST
                local f15_local15 = 50
                local f15_local16 = {}

                local f15_local17 = function (f17_arg0)
                    
                end

                local f15_local18 = nil
                local f15_local19 = EZOP_ChkFunc_InsideRange
                local f15_local20 = {0, 360, -10, 9999}
                local f15_local21 = true
                f15_local0:Add(EZOP_SetAct_ApproachTarget(ai, f15_local11, f15_local12, f15_local13, f15_local14, f15_local15, f15_local16, f15_local17, f15_local18, f15_local19, f15_local20, TransAct, f15_local21))
            else
                ai:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                local f15_local11 = 1
                local f15_local12 = TARGET_LOCALPLAYER
                local f15_local13 = 0
                local f15_local14 = 0
                local f15_local15 = 0
                local f15_local16 = AI_TURN_TARGET_TYPE_MOVING_DIRECTION
                local f15_local17 = EZOP_MOVETYPE._BOOST
                local f15_local18 = 50
                local f15_local19 = {}

                local f15_local20 = function (f18_arg0)
                    
                end

                local f15_local21 = nil
                local f15_local22 = EZOP_ChkFunc_InsideRange
                local f15_local23 = {0, 360, -10, 9999}
                local f15_local24 = true
                local f15_local25 = false
                f15_local0:Add(EZOP_SetAct_ApproachBoostRise(ai, f15_local11, f15_local12, f15_local13, f15_local14, f15_local15, f15_local16, f15_local17, f15_local18, f15_local19, f15_local20, f15_local21, f15_local22, f15_local23, TransAct, f15_local24, f15_local25))
            end
        elseif f15_local3 < 100 and f15_local2 < 100 and f15_local4 < 100 then
            ai:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f15_local11 = 1
            local f15_local12 = TARGET_LOCALPLAYER
            local f15_local13 = TARGET_ENE_0
            local f15_local14 = EZOP_MOVETYPE._BOOST
            local f15_local15 = 50
            local f15_local16 = {}

            local f15_local17 = function (f19_arg0)
                
            end

            local f15_local18 = nil
            local f15_local19 = EZOP_ChkFunc_InsideRange
            local f15_local20 = {0, 360, -10, 9999}
            local f15_local21 = true
            f15_local0:Add(EZOP_SetAct_ApproachTarget(ai, f15_local11, f15_local12, f15_local13, f15_local14, f15_local15, f15_local16, f15_local17, f15_local18, f15_local19, f15_local20, TransAct, f15_local21))
        else
            ai:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f15_local11 = 1
            local f15_local12 = TARGET_LOCALPLAYER
            local f15_local13 = 0
            local f15_local14 = 0
            local f15_local15 = 0
            local f15_local16 = TARGET_ENE_0
            local f15_local17 = EZOP_MOVETYPE._BOOST
            local f15_local18 = 50
            local f15_local19 = {}

            local f15_local20 = function (f20_arg0)
                
            end

            local f15_local21 = nil
            local f15_local22 = EZOP_ChkFunc_InsideRange
            local f15_local23 = {0, 360, -10, 9999}
            local f15_local24 = true
            local f15_local25 = false
            f15_local0:Add(EZOP_SetAct_ApproachBoostRise(ai, f15_local11, f15_local12, f15_local13, f15_local14, f15_local15, f15_local16, f15_local17, f15_local18, f15_local19, f15_local20, f15_local21, f15_local22, f15_local23, TransAct, f15_local24, f15_local25))
        end
        return f15_local0
        
    end

    OpSetArr[f3_arg1][991001] = function (f21_arg0, f21_arg1)
        local f21_local0 = EZOPArray.new()
        local f21_local1 = f21_arg0:GetExcelParam(42)
        local f21_local2 = f21_arg0:GetExcelParam(43)
        local f21_local3 = f21_arg0:GetExcelParam(44)
        local f21_local4 = f21_arg0:GetExcelParam(45)
        local f21_local5 = f21_arg0:GetExcelParam(46)
        local f21_local6 = f21_arg0:GetExcelParam(47)
        f21_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
        if f21_arg0:HasSpecialEffectId(TARGET_SELF, 9151) then
            local f21_local7 = 10
            local f21_local8 = TARGET_LOCALPLAYER
            local f21_local9 = TARGET_LOCALPLAYER
            local f21_local10 = EZOP_MOVETYPE._BOOST
            local f21_local11 = f21_local6 - 50
            local f21_local12 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0)}

            local f21_local13 = function (f22_arg0)
                
            end

            local f21_local14 = nil
            local f21_local15 = EZOP_ChkFunc_InsideRange
            local f21_local16 = {0, 360, -10, 9999}
            local f21_local17 = true
            f21_local0:Add(EZOP_SetAct_ApproachTarget(f21_arg0, f21_local7, f21_local8, f21_local9, f21_local10, f21_local11, f21_local12, f21_local13, f21_local14, f21_local15, f21_local16, TransAct, f21_local17))
        else
            local f21_local7 = 10
            local f21_local8 = TARGET_LOCALPLAYER
            local f21_local9 = TARGET_LOCALPLAYER
            local f21_local10 = EZOP_MOVETYPE._BOOST
            local f21_local11 = f21_local6 - 50
            local f21_local12 = {}

            local f21_local13 = function (f23_arg0)
                
            end

            local f21_local14 = nil
            local f21_local15 = EZOP_ChkFunc_InsideRange
            local f21_local16 = {0, 360, -10, 9999}
            local f21_local17 = true
            f21_local0:Add(EZOP_SetAct_ApproachTarget(f21_arg0, f21_local7, f21_local8, f21_local9, f21_local10, f21_local11, f21_local12, f21_local13, f21_local14, f21_local15, f21_local16, TransAct, f21_local17))
        end
        return f21_local0
        
    end

    OpSetArr[f3_arg1][991002] = function (f24_arg0, f24_arg1)
        local f24_local0 = EZOPArray.new()
        local f24_local1 = f24_arg0:GetExcelParam(42)
        local f24_local2 = f24_arg0:GetExcelParam(43)
        local f24_local3 = f24_arg0:GetExcelParam(44)
        local f24_local4 = f24_arg0:GetExcelParam(45)
        local f24_local5 = f24_arg0:GetExcelParam(46)
        local f24_local6 = f24_arg0:GetExcelParam(47)
        f24_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
        if f24_arg0:HasSpecialEffectId(TARGET_SELF, 9151) then
            local f24_local7 = 5
            local f24_local8 = TARGET_LOCALPLAYER
            local f24_local9 = 0
            local f24_local10 = 0
            local f24_local11 = 0
            local f24_local12 = TARGET_LOCALPLAYER
            local f24_local13 = EZOP_MOVETYPE._BOOST
            local f24_local14 = f24_local6 - 50
            local f24_local15 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0)}

            local f24_local16 = function (f25_arg0)
                
            end

            local f24_local17 = nil
            local f24_local18 = EZOP_ChkFunc_InsideRange
            local f24_local19 = {0, 360, -10, 9999}
            local f24_local20 = true
            local f24_local21 = false
            f24_local0:Add(EZOP_SetAct_ApproachBoostRise(f24_arg0, f24_local7, f24_local8, f24_local9, f24_local10, f24_local11, f24_local12, f24_local13, f24_local14, f24_local15, f24_local16, f24_local17, f24_local18, f24_local19, TransAct, f24_local20, f24_local21))
        else
            local f24_local7 = 5
            local f24_local8 = TARGET_LOCALPLAYER
            local f24_local9 = 0
            local f24_local10 = 0
            local f24_local11 = 0
            local f24_local12 = TARGET_LOCALPLAYER
            local f24_local13 = EZOP_MOVETYPE._BOOST
            local f24_local14 = f24_local6 - 50
            local f24_local15 = {}

            local f24_local16 = function (f26_arg0)
                
            end

            local f24_local17 = nil
            local f24_local18 = EZOP_ChkFunc_InsideRange
            local f24_local19 = {0, 360, -10, 9999}
            local f24_local20 = true
            local f24_local21 = false
            f24_local0:Add(EZOP_SetAct_ApproachBoostRise(f24_arg0, f24_local7, f24_local8, f24_local9, f24_local10, f24_local11, f24_local12, f24_local13, f24_local14, f24_local15, f24_local16, f24_local17, f24_local18, f24_local19, TransAct, f24_local20, f24_local21))
        end
        return f24_local0
        
    end

    OpSetArr[f3_arg1][991003] = function (f27_arg0, f27_arg1)
        local f27_local0 = EZOPArray.new()
        local f27_local1 = f27_arg0:GetExcelParam(42)
        local f27_local2 = f27_arg0:GetExcelParam(43)
        local f27_local3 = f27_arg0:GetExcelParam(44)
        local f27_local4 = f27_arg0:GetExcelParam(45)
        local f27_local5 = f27_arg0:GetExcelParam(46)
        local f27_local6 = f27_arg0:GetExcelParam(47)
        if f27_arg0:HasSpecialEffectId(TARGET_SELF, 9151) then
            local f27_local7 = 10
            local f27_local8 = TARGET_LOCALPLAYER
            local f27_local9 = 0
            local f27_local10 = f27_local6 - 50
            local f27_local11 = -1
            local f27_local12 = 0
            local f27_local13 = 0
            local f27_local14 = false
            local f27_local15 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0)}
            local f27_local16 = EZOP_ChkFunc_InsideRange
            local f27_local17 = {0, 360, -10, 9999}

            local f27_local18 = function (f28_arg0)
                
            end

            local f27_local19 = nil
            f27_local0:Add(EZOP_SetAct_NPC_AssultBoost(f27_arg0, f27_local7, f27_local8, f27_local9, f27_local10, f27_local11, f27_local12, f27_local13, f27_local14, f27_local15, f27_local16, f27_local17, f27_local18, f27_local19, TransAct))
        else
            local f27_local7 = 10
            local f27_local8 = TARGET_LOCALPLAYER
            local f27_local9 = 0
            local f27_local10 = f27_local6 - 50
            local f27_local11 = -1
            local f27_local12 = 0
            local f27_local13 = 0
            local f27_local14 = false
            local f27_local15 = {}
            local f27_local16 = EZOP_ChkFunc_InsideRange
            local f27_local17 = {0, 360, -10, 9999}

            local f27_local18 = function (f29_arg0)
                
            end

            local f27_local19 = nil
            f27_local0:Add(EZOP_SetAct_NPC_AssultBoost(f27_arg0, f27_local7, f27_local8, f27_local9, f27_local10, f27_local11, f27_local12, f27_local13, f27_local14, f27_local15, f27_local16, f27_local17, f27_local18, f27_local19, TransAct))
        end
        return f27_local0
        
    end

    OpSetArr[f3_arg1][991011] = function (f30_arg0, f30_arg1)
        local f30_local0 = EZOPArray.new()
        local f30_local1 = f30_arg0:GetExcelParam(42)
        local f30_local2 = f30_arg0:GetExcelParam(43)
        local f30_local3 = f30_arg0:GetExcelParam(44)
        local f30_local4 = f30_arg0:GetExcelParam(45)
        local f30_local5 = f30_arg0:GetExcelParam(46)
        local f30_local6 = f30_arg0:GetExcelParam(47)
        f30_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
        if f30_arg0:HasSpecialEffectId(TARGET_SELF, 9151) then
            local f30_local7 = 10
            local f30_local8 = TARGET_LOCALPLAYER
            local f30_local9 = TARGET_LOCALPLAYER
            local f30_local10 = EZOP_MOVETYPE._BOOST
            local f30_local11 = f30_local5 - 50
            local f30_local12 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0)}

            local f30_local13 = function (f31_arg0)
                
            end

            local f30_local14 = nil
            local f30_local15 = EZOP_ChkFunc_InsideRange
            local f30_local16 = {0, 360, -10, 9999}
            local f30_local17 = true
            f30_local0:Add(EZOP_SetAct_ApproachTarget(f30_arg0, f30_local7, f30_local8, f30_local9, f30_local10, f30_local11, f30_local12, f30_local13, f30_local14, f30_local15, f30_local16, TransAct, f30_local17))
        else
            local f30_local7 = 10
            local f30_local8 = TARGET_LOCALPLAYER
            local f30_local9 = TARGET_LOCALPLAYER
            local f30_local10 = EZOP_MOVETYPE._BOOST
            local f30_local11 = f30_local5 - 50
            local f30_local12 = {}

            local f30_local13 = function (f32_arg0)
                
            end

            local f30_local14 = nil
            local f30_local15 = EZOP_ChkFunc_InsideRange
            local f30_local16 = {0, 360, -10, 9999}
            local f30_local17 = true
            f30_local0:Add(EZOP_SetAct_ApproachTarget(f30_arg0, f30_local7, f30_local8, f30_local9, f30_local10, f30_local11, f30_local12, f30_local13, f30_local14, f30_local15, f30_local16, TransAct, f30_local17))
        end
        return f30_local0
        
    end

    OpSetArr[f3_arg1][991012] = function (f33_arg0, f33_arg1)
        local f33_local0 = EZOPArray.new()
        local f33_local1 = f33_arg0:GetExcelParam(42)
        local f33_local2 = f33_arg0:GetExcelParam(43)
        local f33_local3 = f33_arg0:GetExcelParam(44)
        local f33_local4 = f33_arg0:GetExcelParam(45)
        local f33_local5 = f33_arg0:GetExcelParam(46)
        local f33_local6 = f33_arg0:GetExcelParam(47)
        f33_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
        if f33_arg0:HasSpecialEffectId(TARGET_SELF, 9151) then
            local f33_local7 = 5
            local f33_local8 = TARGET_LOCALPLAYER
            local f33_local9 = 0
            local f33_local10 = 0
            local f33_local11 = 0
            local f33_local12 = TARGET_ENE_0
            local f33_local13 = EZOP_MOVETYPE._BOOST
            local f33_local14 = f33_local5 - 50
            local f33_local15 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0)}

            local f33_local16 = function (f34_arg0)
                
            end

            local f33_local17 = nil
            local f33_local18 = EZOP_ChkFunc_InsideRange
            local f33_local19 = {0, 360, -10, 9999}
            local f33_local20 = true
            local f33_local21 = false
            f33_local0:Add(EZOP_SetAct_ApproachBoostRise(f33_arg0, f33_local7, f33_local8, f33_local9, f33_local10, f33_local11, f33_local12, f33_local13, f33_local14, f33_local15, f33_local16, f33_local17, f33_local18, f33_local19, TransAct, f33_local20, f33_local21))
        else
            local f33_local7 = 5
            local f33_local8 = TARGET_LOCALPLAYER
            local f33_local9 = 0
            local f33_local10 = 0
            local f33_local11 = 0
            local f33_local12 = TARGET_ENE_0
            local f33_local13 = EZOP_MOVETYPE._BOOST
            local f33_local14 = f33_local5 - 50
            local f33_local15 = {}

            local f33_local16 = function (f35_arg0)
                
            end

            local f33_local17 = nil
            local f33_local18 = EZOP_ChkFunc_InsideRange
            local f33_local19 = {0, 360, -10, 9999}
            local f33_local20 = true
            local f33_local21 = false
            f33_local0:Add(EZOP_SetAct_ApproachBoostRise(f33_arg0, f33_local7, f33_local8, f33_local9, f33_local10, f33_local11, f33_local12, f33_local13, f33_local14, f33_local15, f33_local16, f33_local17, f33_local18, f33_local19, TransAct, f33_local20, f33_local21))
        end
        return f33_local0
        
    end

    OpSetArr[f3_arg1][991100] = function (f36_arg0, f36_arg1)
        local f36_local0 = EZOPArray.new()
        local f36_local1 = f36_arg0:GetDistY(TARGET_LOCALPLAYER)
        local f36_local2 = f36_arg0:GetHeightFromGround(TARGET_LOCALPLAYER)
        local f36_local3 = f36_arg0:GetHeightFromGround(TARGET_SELF)
        local f36_local4 = f36_arg0:GetExcelParam(40)
        local f36_local5 = f36_arg0:GetExcelParam(42)
        local f36_local6 = f36_arg0:GetExcelParam(43)
        local f36_local7 = f36_arg0:GetExcelParam(44)
        local f36_local8 = f36_arg0:GetExcelParam(45)
        local f36_local9 = f36_arg0:GetExcelParam(46)
        local f36_local10 = f36_arg0:GetExcelParam(47)
        if f36_arg0:GetBattleState() >= 2 and f36_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == true and HAGI_InsideRange(f36_arg0, 0, 90, 0, 999) then
            if f36_local4 == 0 then
                if f36_local2 < 100 and f36_local1 < 100 and f36_local3 < 100 then
                    f36_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                    local f36_local11 = 1
                    local f36_local12 = TARGET_LOCALPLAYER
                    local f36_local13 = TARGET_ENE_0
                    local f36_local14 = EZOP_MOVETYPE._BOOST
                    local f36_local15 = 50
                    local f36_local16 = {EZOP_MakeAtkOp_NpcAcShoot(f36_local12, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f36_local12, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0.1, -1)}

                    local f36_local17 = function (f37_arg0)
                        
                    end

                    local f36_local18 = nil
                    local f36_local19 = EZOP_ChkFunc_InsideRange
                    local f36_local20 = {0, 360, -10, 9999}
                    local f36_local21 = true
                    f36_local0:Add(EZOP_SetAct_ApproachTarget(f36_arg0, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17, f36_local18, f36_local19, f36_local20, TransAct, f36_local21))
                else
                    f36_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                    local f36_local11 = 1
                    local f36_local12 = TARGET_LOCALPLAYER
                    local f36_local13 = 0
                    local f36_local14 = 0
                    local f36_local15 = 0
                    local f36_local16 = TARGET_ENE_0
                    local f36_local17 = EZOP_MOVETYPE._BOOST
                    local f36_local18 = 50
                    local f36_local19 = {EZOP_MakeAtkOp_NpcAcShoot(f36_local12, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f36_local12, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0.1, -1)}

                    local f36_local20 = function (f38_arg0)
                        
                    end

                    local f36_local21 = nil
                    local f36_local22 = EZOP_ChkFunc_InsideRange
                    local f36_local23 = {0, 360, -10, 9999}
                    local f36_local24 = true
                    local f36_local25 = false
                    f36_local0:Add(EZOP_SetAct_ApproachBoostRise(f36_arg0, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17, f36_local18, f36_local19, f36_local20, f36_local21, f36_local22, f36_local23, TransAct, f36_local24, f36_local25))
                end
            elseif f36_local4 == 1 then
                if f36_local2 < 100 and f36_local1 < 100 and f36_local3 < 100 then
                    f36_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                    local f36_local11 = 1
                    local f36_local12 = TARGET_LOCALPLAYER
                    local f36_local13 = TARGET_ENE_0
                    local f36_local14 = EZOP_MOVETYPE._BOOST
                    local f36_local15 = 50
                    local f36_local16 = {EZOP_MakeAtkOp_NpcAcShoot(f36_local12, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f36_local12, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0.1, -1)}

                    local f36_local17 = function (f39_arg0)
                        
                    end

                    local f36_local18 = nil
                    local f36_local19 = EZOP_ChkFunc_InsideRange
                    local f36_local20 = {0, 360, -10, 9999}
                    local f36_local21 = true
                    f36_local0:Add(EZOP_SetAct_ApproachTarget(f36_arg0, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17, f36_local18, f36_local19, f36_local20, TransAct, f36_local21))
                else
                    f36_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                    local f36_local11 = 1
                    local f36_local12 = TARGET_LOCALPLAYER
                    local f36_local13 = 0
                    local f36_local14 = 0
                    local f36_local15 = 0
                    local f36_local16 = TARGET_ENE_0
                    local f36_local17 = EZOP_MOVETYPE._BOOST
                    local f36_local18 = 50
                    local f36_local19 = {EZOP_MakeAtkOp_NpcAcShoot(f36_local12, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f36_local12, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0.1, -1)}

                    local f36_local20 = function (f40_arg0)
                        
                    end

                    local f36_local21 = nil
                    local f36_local22 = EZOP_ChkFunc_InsideRange
                    local f36_local23 = {0, 360, -10, 9999}
                    local f36_local24 = true
                    local f36_local25 = false
                    f36_local0:Add(EZOP_SetAct_ApproachBoostRise(f36_arg0, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17, f36_local18, f36_local19, f36_local20, f36_local21, f36_local22, f36_local23, TransAct, f36_local24, f36_local25))
                end
            elseif f36_local4 == 2 then
                if f36_local2 < 100 and f36_local1 < 100 and f36_local3 < 100 then
                    f36_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                    local f36_local11 = 1
                    local f36_local12 = TARGET_LOCALPLAYER
                    local f36_local13 = TARGET_ENE_0
                    local f36_local14 = EZOP_MOVETYPE._BOOST
                    local f36_local15 = 50
                    local f36_local16 = {EZOP_MakeAtkOp_NpcAcShoot(f36_local12, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f36_local12, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0.1, -1)}

                    local f36_local17 = function (f41_arg0)
                        
                    end

                    local f36_local18 = nil
                    local f36_local19 = EZOP_ChkFunc_InsideRange
                    local f36_local20 = {0, 360, -10, 9999}
                    local f36_local21 = true
                    f36_local0:Add(EZOP_SetAct_ApproachTarget(f36_arg0, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17, f36_local18, f36_local19, f36_local20, TransAct, f36_local21))
                else
                    f36_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                    local f36_local11 = 1
                    local f36_local12 = TARGET_LOCALPLAYER
                    local f36_local13 = 0
                    local f36_local14 = 0
                    local f36_local15 = 0
                    local f36_local16 = TARGET_ENE_0
                    local f36_local17 = EZOP_MOVETYPE._BOOST
                    local f36_local18 = 50
                    local f36_local19 = {EZOP_MakeAtkOp_NpcAcShoot(f36_local12, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f36_local12, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0.1, -1)}

                    local f36_local20 = function (f42_arg0)
                        
                    end

                    local f36_local21 = nil
                    local f36_local22 = EZOP_ChkFunc_InsideRange
                    local f36_local23 = {0, 360, -10, 9999}
                    local f36_local24 = true
                    local f36_local25 = false
                    f36_local0:Add(EZOP_SetAct_ApproachBoostRise(f36_arg0, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17, f36_local18, f36_local19, f36_local20, f36_local21, f36_local22, f36_local23, TransAct, f36_local24, f36_local25))
                end
            elseif f36_local4 == 3 then
                if f36_local2 < 100 and f36_local1 < 100 and f36_local3 < 100 then
                    f36_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                    local f36_local11 = 1
                    local f36_local12 = TARGET_LOCALPLAYER
                    local f36_local13 = TARGET_ENE_0
                    local f36_local14 = EZOP_MOVETYPE._BOOST
                    local f36_local15 = 50
                    local f36_local16 = {EZOP_MakeAtkOp_NpcAcShoot(f36_local12, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f36_local12, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0.1, -1)}

                    local f36_local17 = function (f43_arg0)
                        
                    end

                    local f36_local18 = nil
                    local f36_local19 = EZOP_ChkFunc_InsideRange
                    local f36_local20 = {0, 360, -10, 9999}
                    local f36_local21 = true
                    f36_local0:Add(EZOP_SetAct_ApproachTarget(f36_arg0, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17, f36_local18, f36_local19, f36_local20, TransAct, f36_local21))
                else
                    f36_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                    local f36_local11 = 1
                    local f36_local12 = TARGET_LOCALPLAYER
                    local f36_local13 = 0
                    local f36_local14 = 0
                    local f36_local15 = 0
                    local f36_local16 = TARGET_ENE_0
                    local f36_local17 = EZOP_MOVETYPE._BOOST
                    local f36_local18 = 50
                    local f36_local19 = {EZOP_MakeAtkOp_NpcAcShoot(f36_local12, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f36_local12, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0.1, -1)}

                    local f36_local20 = function (f44_arg0)
                        
                    end

                    local f36_local21 = nil
                    local f36_local22 = EZOP_ChkFunc_InsideRange
                    local f36_local23 = {0, 360, -10, 9999}
                    local f36_local24 = true
                    local f36_local25 = false
                    f36_local0:Add(EZOP_SetAct_ApproachBoostRise(f36_arg0, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17, f36_local18, f36_local19, f36_local20, f36_local21, f36_local22, f36_local23, TransAct, f36_local24, f36_local25))
                end
            end
        elseif f36_local2 < 100 and f36_local1 < 100 and f36_local3 < 100 then
            f36_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f36_local11 = 1
            local f36_local12 = TARGET_LOCALPLAYER
            local f36_local13 = TARGET_LOCALPLAYER
            local f36_local14 = EZOP_MOVETYPE._BOOST
            local f36_local15 = 50
            local f36_local16 = {}

            local f36_local17 = function (f45_arg0)
                
            end

            local f36_local18 = nil
            local f36_local19 = EZOP_ChkFunc_InsideRange
            local f36_local20 = {0, 360, -10, 9999}
            local f36_local21 = true
            f36_local0:Add(EZOP_SetAct_ApproachTarget(f36_arg0, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17, f36_local18, f36_local19, f36_local20, TransAct, f36_local21))
        else
            f36_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f36_local11 = 1
            local f36_local12 = TARGET_LOCALPLAYER
            local f36_local13 = 0
            local f36_local14 = 0
            local f36_local15 = 0
            local f36_local16 = TARGET_LOCALPLAYER
            local f36_local17 = EZOP_MOVETYPE._BOOST
            local f36_local18 = 50
            local f36_local19 = {}

            local f36_local20 = function (f46_arg0)
                
            end

            local f36_local21 = nil
            local f36_local22 = EZOP_ChkFunc_InsideRange
            local f36_local23 = {0, 360, -10, 9999}
            local f36_local24 = true
            local f36_local25 = false
            f36_local0:Add(EZOP_SetAct_ApproachBoostRise(f36_arg0, f36_local11, f36_local12, f36_local13, f36_local14, f36_local15, f36_local16, f36_local17, f36_local18, f36_local19, f36_local20, f36_local21, f36_local22, f36_local23, TransAct, f36_local24, f36_local25))
        end
        return f36_local0
        
    end

    OpSetArr[f3_arg1][991101] = function (f47_arg0, f47_arg1)
        local f47_local0 = EZOPArray.new()
        f47_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
        local f47_local1 = 1
        local f47_local2 = TARGET_LOCALPLAYER
        local f47_local3 = TARGET_ENE_0
        local f47_local4 = EZOP_MOVETYPE._BOOST
        local f47_local5 = 50
        local f47_local6 = {}

        local f47_local7 = function (f48_arg0)
            
        end

        local f47_local8 = nil
        local f47_local9 = EZOP_ChkFunc_InsideRange
        local f47_local10 = {0, 360, -10, 9999}
        local f47_local11 = true
        f47_local0:Add(EZOP_SetAct_ApproachTarget(f47_arg0, f47_local1, f47_local2, f47_local3, f47_local4, f47_local5, f47_local6, f47_local7, f47_local8, f47_local9, f47_local10, TransAct, f47_local11))
        return f47_local0
        
    end

    OpSetArr[f3_arg1][991102] = function (f49_arg0, f49_arg1)
        local f49_local0 = EZOPArray.new()
        f49_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
        local f49_local1 = 1
        local f49_local2 = TARGET_LOCALPLAYER
        local f49_local3 = 0
        local f49_local4 = 0
        local f49_local5 = 0
        local f49_local6 = TARGET_ENE_0
        local f49_local7 = EZOP_MOVETYPE._BOOST
        local f49_local8 = 50
        local f49_local9 = {}

        local f49_local10 = function (f50_arg0)
            
        end

        local f49_local11 = nil
        local f49_local12 = EZOP_ChkFunc_InsideRange
        local f49_local13 = {0, 360, -10, 9999}
        local f49_local14 = true
        local f49_local15 = false
        f49_local0:Add(EZOP_SetAct_ApproachBoostRise(f49_arg0, f49_local1, f49_local2, f49_local3, f49_local4, f49_local5, f49_local6, f49_local7, f49_local8, f49_local9, f49_local10, f49_local11, f49_local12, f49_local13, TransAct, f49_local14, f49_local15))
        return f49_local0
        
    end

    OpSetArr[f3_arg1][991111] = function (f51_arg0, f51_arg1)
        local f51_local0 = EZOPArray.new()
        local f51_local1 = f51_arg0:GetExcelParam(40)
        local f51_local2 = f51_arg0:GetExcelParam(42)
        local f51_local3 = f51_arg0:GetExcelParam(43)
        local f51_local4 = f51_arg0:GetExcelParam(44)
        local f51_local5 = f51_arg0:GetExcelParam(45)
        local f51_local6 = f51_arg0:GetExcelParam(46)
        local f51_local7 = f51_arg0:GetExcelParam(47)
        if f51_arg0:HasSpecialEffectId(TARGET_SELF, 9151) then
            if f51_local1 == 0 then
                f51_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                local f51_local8 = 10
                local f51_local9 = TARGET_LOCALPLAYER
                local f51_local10 = TARGET_ENE_0
                local f51_local11 = EZOP_MOVETYPE._BOOST
                local f51_local12 = f51_local6 - 50
                local f51_local13 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0), EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0.1, -1)}

                local f51_local14 = function (f52_arg0)
                    
                end

                local f51_local15 = nil
                local f51_local16 = EZOP_ChkFunc_InsideRange
                local f51_local17 = {0, 360, -10, 9999}
                local f51_local18 = true
                f51_local0:Add(EZOP_SetAct_ApproachTarget(f51_arg0, f51_local8, f51_local9, f51_local10, f51_local11, f51_local12, f51_local13, f51_local14, f51_local15, f51_local16, f51_local17, TransAct, f51_local18))
            elseif f51_local1 == 1 then
                f51_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                local f51_local8 = 10
                local f51_local9 = TARGET_LOCALPLAYER
                local f51_local10 = TARGET_ENE_0
                local f51_local11 = EZOP_MOVETYPE._BOOST
                local f51_local12 = f51_local6 - 50
                local f51_local13 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0), EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0.1, -1)}

                local f51_local14 = function (f53_arg0)
                    
                end

                local f51_local15 = nil
                local f51_local16 = EZOP_ChkFunc_InsideRange
                local f51_local17 = {0, 360, -10, 9999}
                local f51_local18 = true
                f51_local0:Add(EZOP_SetAct_ApproachTarget(f51_arg0, f51_local8, f51_local9, f51_local10, f51_local11, f51_local12, f51_local13, f51_local14, f51_local15, f51_local16, f51_local17, TransAct, f51_local18))
            elseif f51_local1 == 2 then
                f51_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                local f51_local8 = 10
                local f51_local9 = TARGET_LOCALPLAYER
                local f51_local10 = TARGET_ENE_0
                local f51_local11 = EZOP_MOVETYPE._BOOST
                local f51_local12 = f51_local6 - 50
                local f51_local13 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0), EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0.1, -1)}

                local f51_local14 = function (f54_arg0)
                    
                end

                local f51_local15 = nil
                local f51_local16 = EZOP_ChkFunc_InsideRange
                local f51_local17 = {0, 360, -10, 9999}
                local f51_local18 = true
                f51_local0:Add(EZOP_SetAct_ApproachTarget(f51_arg0, f51_local8, f51_local9, f51_local10, f51_local11, f51_local12, f51_local13, f51_local14, f51_local15, f51_local16, f51_local17, TransAct, f51_local18))
            elseif f51_local1 == 3 then
                f51_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                local f51_local8 = 10
                local f51_local9 = TARGET_LOCALPLAYER
                local f51_local10 = TARGET_ENE_0
                local f51_local11 = EZOP_MOVETYPE._BOOST
                local f51_local12 = f51_local6 - 50
                local f51_local13 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0), EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0.1, -1)}

                local f51_local14 = function (f55_arg0)
                    
                end

                local f51_local15 = nil
                local f51_local16 = EZOP_ChkFunc_InsideRange
                local f51_local17 = {0, 360, -10, 9999}
                local f51_local18 = true
                f51_local0:Add(EZOP_SetAct_ApproachTarget(f51_arg0, f51_local8, f51_local9, f51_local10, f51_local11, f51_local12, f51_local13, f51_local14, f51_local15, f51_local16, f51_local17, TransAct, f51_local18))
            else
                f51_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                local f51_local8 = 10
                local f51_local9 = TARGET_LOCALPLAYER
                local f51_local10 = TARGET_ENE_0
                local f51_local11 = EZOP_MOVETYPE._BOOST
                local f51_local12 = f51_local6 - 50
                local f51_local13 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0)}

                local f51_local14 = function (f56_arg0)
                    
                end

                local f51_local15 = nil
                local f51_local16 = EZOP_ChkFunc_InsideRange
                local f51_local17 = {0, 360, -10, 9999}
                local f51_local18 = true
                f51_local0:Add(EZOP_SetAct_ApproachTarget(f51_arg0, f51_local8, f51_local9, f51_local10, f51_local11, f51_local12, f51_local13, f51_local14, f51_local15, f51_local16, f51_local17, TransAct, f51_local18))
            end
        elseif f51_local1 == 0 then
            f51_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f51_local8 = 10
            local f51_local9 = TARGET_LOCALPLAYER
            local f51_local10 = TARGET_ENE_0
            local f51_local11 = EZOP_MOVETYPE._BOOST
            local f51_local12 = f51_local6 - 50
            local f51_local13 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0.1, -1)}

            local f51_local14 = function (f57_arg0)
                
            end

            local f51_local15 = nil
            local f51_local16 = EZOP_ChkFunc_InsideRange
            local f51_local17 = {0, 360, -10, 9999}
            local f51_local18 = true
            f51_local0:Add(EZOP_SetAct_ApproachTarget(f51_arg0, f51_local8, f51_local9, f51_local10, f51_local11, f51_local12, f51_local13, f51_local14, f51_local15, f51_local16, f51_local17, TransAct, f51_local18))
        elseif f51_local1 == 1 then
            f51_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f51_local8 = 10
            local f51_local9 = TARGET_LOCALPLAYER
            local f51_local10 = TARGET_ENE_0
            local f51_local11 = EZOP_MOVETYPE._BOOST
            local f51_local12 = f51_local6 - 50
            local f51_local13 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0.1, -1)}

            local f51_local14 = function (f58_arg0)
                
            end

            local f51_local15 = nil
            local f51_local16 = EZOP_ChkFunc_InsideRange
            local f51_local17 = {0, 360, -10, 9999}
            local f51_local18 = true
            f51_local0:Add(EZOP_SetAct_ApproachTarget(f51_arg0, f51_local8, f51_local9, f51_local10, f51_local11, f51_local12, f51_local13, f51_local14, f51_local15, f51_local16, f51_local17, TransAct, f51_local18))
        elseif f51_local1 == 2 then
            f51_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f51_local8 = 10
            local f51_local9 = TARGET_LOCALPLAYER
            local f51_local10 = TARGET_ENE_0
            local f51_local11 = EZOP_MOVETYPE._BOOST
            local f51_local12 = f51_local6 - 50
            local f51_local13 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0.1, -1)}

            local f51_local14 = function (f59_arg0)
                
            end

            local f51_local15 = nil
            local f51_local16 = EZOP_ChkFunc_InsideRange
            local f51_local17 = {0, 360, -10, 9999}
            local f51_local18 = true
            f51_local0:Add(EZOP_SetAct_ApproachTarget(f51_arg0, f51_local8, f51_local9, f51_local10, f51_local11, f51_local12, f51_local13, f51_local14, f51_local15, f51_local16, f51_local17, TransAct, f51_local18))
        elseif f51_local1 == 3 then
            f51_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f51_local8 = 10
            local f51_local9 = TARGET_LOCALPLAYER
            local f51_local10 = TARGET_ENE_0
            local f51_local11 = EZOP_MOVETYPE._BOOST
            local f51_local12 = f51_local6 - 50
            local f51_local13 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0.1, -1)}

            local f51_local14 = function (f60_arg0)
                
            end

            local f51_local15 = nil
            local f51_local16 = EZOP_ChkFunc_InsideRange
            local f51_local17 = {0, 360, -10, 9999}
            local f51_local18 = true
            f51_local0:Add(EZOP_SetAct_ApproachTarget(f51_arg0, f51_local8, f51_local9, f51_local10, f51_local11, f51_local12, f51_local13, f51_local14, f51_local15, f51_local16, f51_local17, TransAct, f51_local18))
        else
            f51_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f51_local8 = 10
            local f51_local9 = TARGET_LOCALPLAYER
            local f51_local10 = TARGET_ENE_0
            local f51_local11 = EZOP_MOVETYPE._BOOST
            local f51_local12 = f51_local6 - 50
            local f51_local13 = {}

            local f51_local14 = function (f61_arg0)
                
            end

            local f51_local15 = nil
            local f51_local16 = EZOP_ChkFunc_InsideRange
            local f51_local17 = {0, 360, -10, 9999}
            local f51_local18 = true
            f51_local0:Add(EZOP_SetAct_ApproachTarget(f51_arg0, f51_local8, f51_local9, f51_local10, f51_local11, f51_local12, f51_local13, f51_local14, f51_local15, f51_local16, f51_local17, TransAct, f51_local18))
        end
        return f51_local0
        
    end

    OpSetArr[f3_arg1][991112] = function (f62_arg0, f62_arg1)
        local f62_local0 = EZOPArray.new()
        local f62_local1 = f62_arg0:GetExcelParam(40)
        local f62_local2 = f62_arg0:GetExcelParam(42)
        local f62_local3 = f62_arg0:GetExcelParam(43)
        local f62_local4 = f62_arg0:GetExcelParam(44)
        local f62_local5 = f62_arg0:GetExcelParam(45)
        local f62_local6 = f62_arg0:GetExcelParam(46)
        local f62_local7 = f62_arg0:GetExcelParam(47)
        if f62_arg0:HasSpecialEffectId(TARGET_SELF, 9151) then
            if f62_local1 == 0 then
                f62_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                local f62_local8 = 5
                local f62_local9 = TARGET_LOCALPLAYER
                local f62_local10 = 0
                local f62_local11 = 0
                local f62_local12 = 0
                local f62_local13 = TARGET_ENE_0
                local f62_local14 = EZOP_MOVETYPE._BOOST
                local f62_local15 = f62_local6 - 50
                local f62_local16 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0), EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0.1, -1)}

                local f62_local17 = function (f63_arg0)
                    
                end

                local f62_local18 = nil
                local f62_local19 = EZOP_ChkFunc_InsideRange
                local f62_local20 = {0, 360, -10, 9999}
                local f62_local21 = true
                local f62_local22 = false
                f62_local0:Add(EZOP_SetAct_ApproachBoostRise(f62_arg0, f62_local8, f62_local9, f62_local10, f62_local11, f62_local12, f62_local13, f62_local14, f62_local15, f62_local16, f62_local17, f62_local18, f62_local19, f62_local20, TransAct, f62_local21, f62_local22))
            elseif f62_local1 == 1 then
                f62_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                local f62_local8 = 5
                local f62_local9 = TARGET_LOCALPLAYER
                local f62_local10 = 0
                local f62_local11 = 0
                local f62_local12 = 0
                local f62_local13 = TARGET_ENE_0
                local f62_local14 = EZOP_MOVETYPE._BOOST
                local f62_local15 = f62_local6 - 50
                local f62_local16 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0), EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0.1, -1)}

                local f62_local17 = function (f64_arg0)
                    
                end

                local f62_local18 = nil
                local f62_local19 = EZOP_ChkFunc_InsideRange
                local f62_local20 = {0, 360, -10, 9999}
                local f62_local21 = true
                local f62_local22 = false
                f62_local0:Add(EZOP_SetAct_ApproachBoostRise(f62_arg0, f62_local8, f62_local9, f62_local10, f62_local11, f62_local12, f62_local13, f62_local14, f62_local15, f62_local16, f62_local17, f62_local18, f62_local19, f62_local20, TransAct, f62_local21, f62_local22))
            elseif f62_local1 == 2 then
                f62_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                local f62_local8 = 5
                local f62_local9 = TARGET_LOCALPLAYER
                local f62_local10 = 0
                local f62_local11 = 0
                local f62_local12 = 0
                local f62_local13 = TARGET_ENE_0
                local f62_local14 = EZOP_MOVETYPE._BOOST
                local f62_local15 = f62_local6 - 50
                local f62_local16 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0), EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0.1, -1)}

                local f62_local17 = function (f65_arg0)
                    
                end

                local f62_local18 = nil
                local f62_local19 = EZOP_ChkFunc_InsideRange
                local f62_local20 = {0, 360, -10, 9999}
                local f62_local21 = true
                f62_local0:Add(EZOP_SetAct_ApproachBoostRise(f62_arg0, f62_local8, f62_local9, f62_local10, f62_local11, f62_local12, f62_local13, f62_local14, f62_local15, f62_local16, f62_local17, f62_local18, f62_local19, f62_local20, TransAct, f62_local21, IsWaitingForPassSearch))
            elseif f62_local1 == 3 then
                f62_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                local f62_local8 = 5
                local f62_local9 = TARGET_LOCALPLAYER
                local f62_local10 = 0
                local f62_local11 = 0
                local f62_local12 = 0
                local f62_local13 = TARGET_ENE_0
                local f62_local14 = EZOP_MOVETYPE._BOOST
                local f62_local15 = f62_local6 - 50
                local f62_local16 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0), EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0.1, -1)}

                local f62_local17 = function (f66_arg0)
                    
                end

                local f62_local18 = nil
                local f62_local19 = EZOP_ChkFunc_InsideRange
                local f62_local20 = {0, 360, -10, 9999}
                local f62_local21 = true
                local f62_local22 = false
                f62_local0:Add(EZOP_SetAct_ApproachBoostRise(f62_arg0, f62_local8, f62_local9, f62_local10, f62_local11, f62_local12, f62_local13, f62_local14, f62_local15, f62_local16, f62_local17, f62_local18, f62_local19, f62_local20, TransAct, f62_local21, f62_local22))
            else
                f62_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                local f62_local8 = 5
                local f62_local9 = TARGET_LOCALPLAYER
                local f62_local10 = 0
                local f62_local11 = 0
                local f62_local12 = 0
                local f62_local13 = TARGET_ENE_0
                local f62_local14 = EZOP_MOVETYPE._BOOST
                local f62_local15 = f62_local6 - 50
                local f62_local16 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0)}

                local f62_local17 = function (f67_arg0)
                    
                end

                local f62_local18 = nil
                local f62_local19 = EZOP_ChkFunc_InsideRange
                local f62_local20 = {0, 360, -10, 9999}
                local f62_local21 = true
                local f62_local22 = false
                f62_local0:Add(EZOP_SetAct_ApproachBoostRise(f62_arg0, f62_local8, f62_local9, f62_local10, f62_local11, f62_local12, f62_local13, f62_local14, f62_local15, f62_local16, f62_local17, f62_local18, f62_local19, f62_local20, TransAct, f62_local21, f62_local22))
            end
        elseif f62_local1 == 0 then
            f62_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f62_local8 = 5
            local f62_local9 = TARGET_LOCALPLAYER
            local f62_local10 = 0
            local f62_local11 = 0
            local f62_local12 = 0
            local f62_local13 = TARGET_ENE_0
            local f62_local14 = EZOP_MOVETYPE._BOOST
            local f62_local15 = f62_local6 - 50
            local f62_local16 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0.1, -1)}

            local f62_local17 = function (f68_arg0)
                
            end

            local f62_local18 = nil
            local f62_local19 = EZOP_ChkFunc_InsideRange
            local f62_local20 = {0, 360, -10, 9999}
            local f62_local21 = true
            local f62_local22 = false
            f62_local0:Add(EZOP_SetAct_ApproachBoostRise(f62_arg0, f62_local8, f62_local9, f62_local10, f62_local11, f62_local12, f62_local13, f62_local14, f62_local15, f62_local16, f62_local17, f62_local18, f62_local19, f62_local20, TransAct, f62_local21, f62_local22))
        elseif f62_local1 == 1 then
            f62_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f62_local8 = 5
            local f62_local9 = TARGET_LOCALPLAYER
            local f62_local10 = 0
            local f62_local11 = 0
            local f62_local12 = 0
            local f62_local13 = TARGET_ENE_0
            local f62_local14 = EZOP_MOVETYPE._BOOST
            local f62_local15 = f62_local6 - 50
            local f62_local16 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0.1, -1)}

            local f62_local17 = function (f69_arg0)
                
            end

            local f62_local18 = nil
            local f62_local19 = EZOP_ChkFunc_InsideRange
            local f62_local20 = {0, 360, -10, 9999}
            local f62_local21 = true
            local f62_local22 = false
            f62_local0:Add(EZOP_SetAct_ApproachBoostRise(f62_arg0, f62_local8, f62_local9, f62_local10, f62_local11, f62_local12, f62_local13, f62_local14, f62_local15, f62_local16, f62_local17, f62_local18, f62_local19, f62_local20, TransAct, f62_local21, f62_local22))
        elseif f62_local1 == 2 then
            f62_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f62_local8 = 5
            local f62_local9 = TARGET_LOCALPLAYER
            local f62_local10 = 0
            local f62_local11 = 0
            local f62_local12 = 0
            local f62_local13 = TARGET_ENE_0
            local f62_local14 = EZOP_MOVETYPE._BOOST
            local f62_local15 = f62_local6 - 50
            local f62_local16 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0.1, -1)}

            local f62_local17 = function (f70_arg0)
                
            end

            local f62_local18 = nil
            local f62_local19 = EZOP_ChkFunc_InsideRange
            local f62_local20 = {0, 360, -10, 9999}
            local f62_local21 = true
            f62_local0:Add(EZOP_SetAct_ApproachBoostRise(f62_arg0, f62_local8, f62_local9, f62_local10, f62_local11, f62_local12, f62_local13, f62_local14, f62_local15, f62_local16, f62_local17, f62_local18, f62_local19, f62_local20, TransAct, f62_local21, IsWaitingForPassSearch))
        elseif f62_local1 == 3 then
            f62_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f62_local8 = 5
            local f62_local9 = TARGET_LOCALPLAYER
            local f62_local10 = 0
            local f62_local11 = 0
            local f62_local12 = 0
            local f62_local13 = TARGET_ENE_0
            local f62_local14 = EZOP_MOVETYPE._BOOST
            local f62_local15 = f62_local6 - 50
            local f62_local16 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0.1, -1)}

            local f62_local17 = function (f71_arg0)
                
            end

            local f62_local18 = nil
            local f62_local19 = EZOP_ChkFunc_InsideRange
            local f62_local20 = {0, 360, -10, 9999}
            local f62_local21 = true
            local f62_local22 = false
            f62_local0:Add(EZOP_SetAct_ApproachBoostRise(f62_arg0, f62_local8, f62_local9, f62_local10, f62_local11, f62_local12, f62_local13, f62_local14, f62_local15, f62_local16, f62_local17, f62_local18, f62_local19, f62_local20, TransAct, f62_local21, f62_local22))
        else
            f62_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f62_local8 = 5
            local f62_local9 = TARGET_LOCALPLAYER
            local f62_local10 = 0
            local f62_local11 = 0
            local f62_local12 = 0
            local f62_local13 = TARGET_ENE_0
            local f62_local14 = EZOP_MOVETYPE._BOOST
            local f62_local15 = f62_local6 - 50
            local f62_local16 = {}

            local f62_local17 = function (f72_arg0)
                
            end

            local f62_local18 = nil
            local f62_local19 = EZOP_ChkFunc_InsideRange
            local f62_local20 = {0, 360, -10, 9999}
            local f62_local21 = true
            local f62_local22 = false
            f62_local0:Add(EZOP_SetAct_ApproachBoostRise(f62_arg0, f62_local8, f62_local9, f62_local10, f62_local11, f62_local12, f62_local13, f62_local14, f62_local15, f62_local16, f62_local17, f62_local18, f62_local19, f62_local20, TransAct, f62_local21, f62_local22))
        end
        return f62_local0
        
    end

    OpSetArr[f3_arg1][992000] = function (f73_arg0, f73_arg1)
        local f73_local0 = EZOPArray.new()
        local f73_local1 = f73_arg0:GetDistY(TARGET_EVENT)
        local f73_local2 = f73_arg0:GetHeightFromGround(TARGET_EVENT)
        local f73_local3 = f73_arg0:GetHeightFromGround(TARGET_SELF)
        local f73_local4 = f73_arg0:GetExcelParam(42)
        local f73_local5 = f73_arg0:GetExcelParam(43)
        local f73_local6 = f73_arg0:GetExcelParam(44)
        local f73_local7 = f73_arg0:GetExcelParam(45)
        local f73_local8 = f73_arg0:GetExcelParam(46)
        local f73_local9 = f73_arg0:GetExcelParam(47)
        if (f73_local6 < EvTargetDist or f73_local6 < f73_local1) and f73_arg0:HasSpecialEffectId(TARGET_SELF, 29990000) then
            local f73_local10 = 10
            local f73_local11 = TARGET_EVENT
            local f73_local12 = 0
            local f73_local13 = f73_local5 - 50
            local f73_local14 = -1
            local f73_local15 = 0
            local f73_local16 = 0
            local f73_local17 = false
            local f73_local18 = {}
            local f73_local19 = EZOP_ChkFunc_InsideRange
            local f73_local20 = {0, 360, -10, 9999}

            local f73_local21 = function (f74_arg0)
                
            end

            local f73_local22 = nil
            f73_local0:Add(EZOP_SetAct_NPC_AssultBoost(f73_arg0, f73_local10, f73_local11, f73_local12, f73_local13, f73_local14, f73_local15, f73_local16, f73_local17, f73_local18, f73_local19, f73_local20, f73_local21, f73_local22, TransAct))
        elseif f73_local6 < EvTargetDist or f73_local6 < f73_local1 then
            if f73_local2 < 100 and f73_local1 < 100 and f73_local3 < 100 then
                f73_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                local f73_local10 = 1
                local f73_local11 = TARGET_EVENT
                local f73_local12 = TARGET_EVENT
                local f73_local13 = EZOP_MOVETYPE._BOOST
                local f73_local14 = 50
                local f73_local15 = {}

                local f73_local16 = function (f75_arg0)
                    
                end

                local f73_local17 = nil
                local f73_local18 = EZOP_ChkFunc_InsideRange
                local f73_local19 = {0, 360, -10, 9999}
                local f73_local20 = true
                f73_local0:Add(EZOP_SetAct_ApproachTarget(f73_arg0, f73_local10, f73_local11, f73_local12, f73_local13, f73_local14, f73_local15, f73_local16, f73_local17, f73_local18, f73_local19, TransAct, f73_local20))
            else
                f73_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                local f73_local10 = 1
                local f73_local11 = TARGET_EVENT
                local f73_local12 = 0
                local f73_local13 = 0
                local f73_local14 = 0
                local f73_local15 = TARGET_EVENT
                local f73_local16 = EZOP_MOVETYPE._BOOST
                local f73_local17 = 50
                local f73_local18 = {}

                local f73_local19 = function (f76_arg0)
                    
                end

                local f73_local20 = nil
                local f73_local21 = EZOP_ChkFunc_InsideRange
                local f73_local22 = {0, 360, -10, 9999}
                local f73_local23 = true
                local f73_local24 = false
                f73_local0:Add(EZOP_SetAct_ApproachBoostRise(f73_arg0, f73_local10, f73_local11, f73_local12, f73_local13, f73_local14, f73_local15, f73_local16, f73_local17, f73_local18, f73_local19, f73_local20, f73_local21, f73_local22, TransAct, f73_local23, f73_local24))
            end
        elseif f73_local2 < 100 and f73_local1 < 100 and f73_local3 < 100 then
            f73_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f73_local10 = 1
            local f73_local11 = TARGET_EVENT
            local f73_local12 = TARGET_ENE_0
            local f73_local13 = EZOP_MOVETYPE._BOOST
            local f73_local14 = 50
            local f73_local15 = {}

            local f73_local16 = function (f77_arg0)
                
            end

            local f73_local17 = nil
            local f73_local18 = EZOP_ChkFunc_InsideRange
            local f73_local19 = {0, 360, -10, 9999}
            local f73_local20 = true
            f73_local0:Add(EZOP_SetAct_ApproachTarget(f73_arg0, f73_local10, f73_local11, f73_local12, f73_local13, f73_local14, f73_local15, f73_local16, f73_local17, f73_local18, f73_local19, TransAct, f73_local20))
        else
            f73_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f73_local10 = 1
            local f73_local11 = TARGET_EVENT
            local f73_local12 = 0
            local f73_local13 = 0
            local f73_local14 = 0
            local f73_local15 = TARGET_ENE_0
            local f73_local16 = EZOP_MOVETYPE._BOOST
            local f73_local17 = 50
            local f73_local18 = {}

            local f73_local19 = function (f78_arg0)
                
            end

            local f73_local20 = nil
            local f73_local21 = EZOP_ChkFunc_InsideRange
            local f73_local22 = {0, 360, -10, 9999}
            local f73_local23 = true
            local f73_local24 = false
            f73_local0:Add(EZOP_SetAct_ApproachBoostRise(f73_arg0, f73_local10, f73_local11, f73_local12, f73_local13, f73_local14, f73_local15, f73_local16, f73_local17, f73_local18, f73_local19, f73_local20, f73_local21, f73_local22, TransAct, f73_local23, f73_local24))
        end
        return f73_local0
        
    end

    OpSetArr[f3_arg1][992001] = function (f79_arg0, f79_arg1)
        local f79_local0 = EZOPArray.new()
        local f79_local1 = f79_arg0:GetExcelParam(42)
        local f79_local2 = f79_arg0:GetExcelParam(43)
        local f79_local3 = f79_arg0:GetExcelParam(44)
        local f79_local4 = f79_arg0:GetExcelParam(45)
        local f79_local5 = f79_arg0:GetExcelParam(46)
        local f79_local6 = f79_arg0:GetExcelParam(47)
        f79_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH, true)
        local f79_local7 = 10
        local f79_local8 = TARGET_EVENT
        local f79_local9 = TARGET_EVENT
        local f79_local10 = EZOP_MOVETYPE._BOOST
        local f79_local11 = f79_local3 - 50
        local f79_local12 = {}

        local f79_local13 = function (f80_arg0)
            
        end

        local f79_local14 = nil
        local f79_local15 = EZOP_ChkFunc_InsideRange
        local f79_local16 = {0, 360, -10, 9999}
        local f79_local17 = true
        f79_local0:Add(EZOP_SetAct_ApproachTarget(f79_arg0, f79_local7, f79_local8, f79_local9, f79_local10, f79_local11, f79_local12, f79_local13, f79_local14, f79_local15, f79_local16, TransAct, f79_local17))
        return f79_local0
        
    end

    OpSetArr[f3_arg1][992002] = function (f81_arg0, f81_arg1)
        local f81_local0 = EZOPArray.new()
        local f81_local1 = f81_arg0:GetExcelParam(42)
        local f81_local2 = f81_arg0:GetExcelParam(43)
        local f81_local3 = f81_arg0:GetExcelParam(44)
        local f81_local4 = f81_arg0:GetExcelParam(45)
        local f81_local5 = f81_arg0:GetExcelParam(46)
        local f81_local6 = f81_arg0:GetExcelParam(47)
        f81_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
        local f81_local7 = 10
        local f81_local8 = TARGET_EVENT
        local f81_local9 = 0
        local f81_local10 = 0
        local f81_local11 = 0
        local f81_local12 = TARGET_EVENT
        local f81_local13 = EZOP_MOVETYPE._BOOST
        local f81_local14 = f81_local3 - 50
        local f81_local15 = {}

        local f81_local16 = function (f82_arg0)
            
        end

        local f81_local17 = nil
        local f81_local18 = EZOP_ChkFunc_InsideRange
        local f81_local19 = {0, 360, -10, 9999}
        local f81_local20 = true
        local f81_local21 = false
        f81_local0:Add(EZOP_SetAct_ApproachBoostRise(f81_arg0, f81_local7, f81_local8, f81_local9, f81_local10, f81_local11, f81_local12, f81_local13, f81_local14, f81_local15, f81_local16, f81_local17, f81_local18, f81_local19, TransAct, f81_local20, f81_local21))
        return f81_local0
        
    end

    OpSetArr[f3_arg1][992003] = function (f83_arg0, f83_arg1)
        local f83_local0 = EZOPArray.new()
        local f83_local1 = f83_arg0:GetExcelParam(42)
        local f83_local2 = f83_arg0:GetExcelParam(43)
        local f83_local3 = f83_arg0:GetExcelParam(44)
        local f83_local4 = f83_arg0:GetExcelParam(45)
        local f83_local5 = f83_arg0:GetExcelParam(46)
        local f83_local6 = f83_arg0:GetExcelParam(47)
        local f83_local7 = 10
        local f83_local8 = TARGET_EVENT
        local f83_local9 = 0
        local f83_local10 = f83_local3 - 50
        local f83_local11 = -1
        local f83_local12 = 0
        local f83_local13 = 0
        local f83_local14 = false
        local f83_local15 = {}
        local f83_local16 = EZOP_ChkFunc_InsideRange
        local f83_local17 = {0, 360, -10, 9999}

        local f83_local18 = function (f84_arg0)
            
        end

        local f83_local19 = nil
        f83_local0:Add(EZOP_SetAct_NPC_AssultBoost(f83_arg0, f83_local7, f83_local8, f83_local9, f83_local10, f83_local11, f83_local12, f83_local13, f83_local14, f83_local15, f83_local16, f83_local17, f83_local18, f83_local19, TransAct))
        return f83_local0
        
    end

    OpSetArr[f3_arg1][992011] = function (f85_arg0, f85_arg1)
        local f85_local0 = EZOPArray.new()
        local f85_local1 = f85_arg0:GetExcelParam(42)
        local f85_local2 = f85_arg0:GetExcelParam(43)
        local f85_local3 = f85_arg0:GetExcelParam(44)
        local f85_local4 = f85_arg0:GetExcelParam(45)
        local f85_local5 = f85_arg0:GetExcelParam(46)
        local f85_local6 = f85_arg0:GetExcelParam(47)
        f85_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
        local f85_local7 = 10
        local f85_local8 = TARGET_EVENT
        local f85_local9 = TARGET_ENE_0
        local f85_local10 = EZOP_MOVETYPE._BOOST
        local f85_local11 = f85_local2 - 50
        local f85_local12 = {}

        local f85_local13 = function (f86_arg0)
            
        end

        local f85_local14 = nil
        local f85_local15 = EZOP_ChkFunc_InsideRange
        local f85_local16 = {0, 360, -10, 9999}
        local f85_local17 = true
        f85_local0:Add(EZOP_SetAct_ApproachTarget(f85_arg0, f85_local7, f85_local8, f85_local9, f85_local10, f85_local11, f85_local12, f85_local13, f85_local14, f85_local15, f85_local16, TransAct, f85_local17))
        return f85_local0
        
    end

    OpSetArr[f3_arg1][992100] = function (f87_arg0, f87_arg1)
        local f87_local0 = EZOPArray.new()
        local f87_local1 = f87_arg0:GetDistY(TARGET_EVENT)
        local f87_local2 = f87_arg0:GetHeightFromGround(TARGET_EVENT)
        local f87_local3 = f87_arg0:GetHeightFromGround(TARGET_SELF)
        local f87_local4 = f87_arg0:GetExcelParam(40)
        local f87_local5 = f87_arg0:GetExcelParam(42)
        local f87_local6 = f87_arg0:GetExcelParam(43)
        local f87_local7 = f87_arg0:GetExcelParam(44)
        local f87_local8 = f87_arg0:GetExcelParam(45)
        local f87_local9 = f87_arg0:GetExcelParam(46)
        local f87_local10 = f87_arg0:GetExcelParam(47)
        if f87_arg0:GetBattleState() >= 2 and f87_arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) == true and HAGI_InsideRange(f87_arg0, 0, 90, 0, 999) then
            if f87_local4 == 0 then
                if f87_local2 < 100 and f87_local1 < 100 and f87_local3 < 100 then
                    f87_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                    local f87_local11 = 1
                    local f87_local12 = TARGET_EVENT
                    local f87_local13 = TARGET_ENE_0
                    local f87_local14 = EZOP_MOVETYPE._BOOST
                    local f87_local15 = 50
                    local f87_local16 = {EZOP_MakeAtkOp_NpcAcShoot(f87_local13, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f87_local13, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0.1, -1)}

                    local f87_local17 = function (f88_arg0)
                        
                    end

                    local f87_local18 = nil
                    local f87_local19 = EZOP_ChkFunc_InsideRange
                    local f87_local20 = {0, 360, -10, 9999}
                    local f87_local21 = true
                    f87_local0:Add(EZOP_SetAct_ApproachTarget(f87_arg0, f87_local11, f87_local12, f87_local13, f87_local14, f87_local15, f87_local16, f87_local17, f87_local18, f87_local19, f87_local20, TransAct, f87_local21))
                else
                    f87_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                    local f87_local11 = 1
                    local f87_local12 = TARGET_EVENT
                    local f87_local13 = 0
                    local f87_local14 = 0
                    local f87_local15 = 0
                    local f87_local16 = TARGET_ENE_0
                    local f87_local17 = EZOP_MOVETYPE._BOOST
                    local f87_local18 = 50
                    local f87_local19 = {EZOP_MakeAtkOp_NpcAcShoot(f87_local16, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f87_local16, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0.1, -1)}

                    local f87_local20 = function (f89_arg0)
                        
                    end

                    local f87_local21 = nil
                    local f87_local22 = EZOP_ChkFunc_InsideRange
                    local f87_local23 = {0, 360, -10, 9999}
                    local f87_local24 = true
                    local f87_local25 = false
                    f87_local0:Add(EZOP_SetAct_ApproachBoostRise(f87_arg0, f87_local11, f87_local12, f87_local13, f87_local14, f87_local15, f87_local16, f87_local17, f87_local18, f87_local19, f87_local20, f87_local21, f87_local22, f87_local23, TransAct, f87_local24, f87_local25))
                end
            elseif f87_local4 == 1 then
                if f87_local2 < 100 and f87_local1 < 100 and f87_local3 < 100 then
                    f87_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                    local f87_local11 = 1
                    local f87_local12 = TARGET_EVENT
                    local f87_local13 = TARGET_ENE_0
                    local f87_local14 = EZOP_MOVETYPE._BOOST
                    local f87_local15 = 50
                    local f87_local16 = {EZOP_MakeAtkOp_NpcAcShoot(f87_local13, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f87_local13, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0.1, -1)}

                    local f87_local17 = function (f90_arg0)
                        
                    end

                    local f87_local18 = nil
                    local f87_local19 = EZOP_ChkFunc_InsideRange
                    local f87_local20 = {0, 360, -10, 9999}
                    local f87_local21 = true
                    f87_local0:Add(EZOP_SetAct_ApproachTarget(f87_arg0, f87_local11, f87_local12, f87_local13, f87_local14, f87_local15, f87_local16, f87_local17, f87_local18, f87_local19, f87_local20, TransAct, f87_local21))
                else
                    f87_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                    local f87_local11 = 1
                    local f87_local12 = TARGET_EVENT
                    local f87_local13 = 0
                    local f87_local14 = 0
                    local f87_local15 = 0
                    local f87_local16 = TARGET_ENE_0
                    local f87_local17 = EZOP_MOVETYPE._BOOST
                    local f87_local18 = 50
                    local f87_local19 = {EZOP_MakeAtkOp_NpcAcShoot(f87_local16, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f87_local16, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0.1, -1)}

                    local f87_local20 = function (f91_arg0)
                        
                    end

                    local f87_local21 = nil
                    local f87_local22 = EZOP_ChkFunc_InsideRange
                    local f87_local23 = {0, 360, -10, 9999}
                    local f87_local24 = true
                    local f87_local25 = false
                    f87_local0:Add(EZOP_SetAct_ApproachBoostRise(f87_arg0, f87_local11, f87_local12, f87_local13, f87_local14, f87_local15, f87_local16, f87_local17, f87_local18, f87_local19, f87_local20, f87_local21, f87_local22, f87_local23, TransAct, f87_local24, f87_local25))
                end
            elseif f87_local4 == 2 then
                if f87_local2 < 100 and f87_local1 < 100 and f87_local3 < 100 then
                    f87_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                    local f87_local11 = 1
                    local f87_local12 = TARGET_EVENT
                    local f87_local13 = TARGET_ENE_0
                    local f87_local14 = EZOP_MOVETYPE._BOOST
                    local f87_local15 = 50
                    local f87_local16 = {EZOP_MakeAtkOp_NpcAcShoot(f87_local13, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f87_local13, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0.1, -1)}

                    local f87_local17 = function (f92_arg0)
                        
                    end

                    local f87_local18 = nil
                    local f87_local19 = EZOP_ChkFunc_InsideRange
                    local f87_local20 = {0, 360, -10, 9999}
                    local f87_local21 = true
                    f87_local0:Add(EZOP_SetAct_ApproachTarget(f87_arg0, f87_local11, f87_local12, f87_local13, f87_local14, f87_local15, f87_local16, f87_local17, f87_local18, f87_local19, f87_local20, TransAct, f87_local21))
                else
                    f87_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                    local f87_local11 = 1
                    local f87_local12 = TARGET_EVENT
                    local f87_local13 = 0
                    local f87_local14 = 0
                    local f87_local15 = 0
                    local f87_local16 = TARGET_ENE_0
                    local f87_local17 = EZOP_MOVETYPE._BOOST
                    local f87_local18 = 50
                    local f87_local19 = {EZOP_MakeAtkOp_NpcAcShoot(f87_local16, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f87_local16, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0.1, -1)}

                    local f87_local20 = function (f93_arg0)
                        
                    end

                    local f87_local21 = nil
                    local f87_local22 = EZOP_ChkFunc_InsideRange
                    local f87_local23 = {0, 360, -10, 9999}
                    local f87_local24 = true
                    local f87_local25 = false
                    f87_local0:Add(EZOP_SetAct_ApproachBoostRise(f87_arg0, f87_local11, f87_local12, f87_local13, f87_local14, f87_local15, f87_local16, f87_local17, f87_local18, f87_local19, f87_local20, f87_local21, f87_local22, f87_local23, TransAct, f87_local24, f87_local25))
                end
            elseif f87_local4 == 3 then
                if f87_local2 < 100 and f87_local1 < 100 and f87_local3 < 100 then
                    f87_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
                    local f87_local11 = 1
                    local f87_local12 = TARGET_EVENT
                    local f87_local13 = TARGET_ENE_0
                    local f87_local14 = EZOP_MOVETYPE._BOOST
                    local f87_local15 = 50
                    local f87_local16 = {EZOP_MakeAtkOp_NpcAcShoot(f87_local13, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f87_local13, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0.1, -1)}

                    local f87_local17 = function (f94_arg0)
                        
                    end

                    local f87_local18 = nil
                    local f87_local19 = EZOP_ChkFunc_InsideRange
                    local f87_local20 = {0, 360, -10, 9999}
                    local f87_local21 = true
                    f87_local0:Add(EZOP_SetAct_ApproachTarget(f87_arg0, f87_local11, f87_local12, f87_local13, f87_local14, f87_local15, f87_local16, f87_local17, f87_local18, f87_local19, f87_local20, TransAct, f87_local21))
                else
                    f87_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
                    local f87_local11 = 1
                    local f87_local12 = TARGET_EVENT
                    local f87_local13 = 0
                    local f87_local14 = 0
                    local f87_local15 = 0
                    local f87_local16 = TARGET_ENE_0
                    local f87_local17 = EZOP_MOVETYPE._BOOST
                    local f87_local18 = 50
                    local f87_local19 = {EZOP_MakeAtkOp_NpcAcShoot(f87_local16, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f87_local16, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0.1, -1)}

                    local f87_local20 = function (f95_arg0)
                        
                    end

                    local f87_local21 = nil
                    local f87_local22 = EZOP_ChkFunc_InsideRange
                    local f87_local23 = {0, 360, -10, 9999}
                    local f87_local24 = true
                    local f87_local25 = false
                    f87_local0:Add(EZOP_SetAct_ApproachBoostRise(f87_arg0, f87_local11, f87_local12, f87_local13, f87_local14, f87_local15, f87_local16, f87_local17, f87_local18, f87_local19, f87_local20, f87_local21, f87_local22, f87_local23, TransAct, f87_local24, f87_local25))
                end
            end
        elseif f87_local2 < 100 and f87_local1 < 100 and f87_local3 < 100 then
            f87_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f87_local11 = 1
            local f87_local12 = TARGET_EVENT
            local f87_local13 = TARGET_EVENT
            local f87_local14 = EZOP_MOVETYPE._BOOST
            local f87_local15 = 50
            local f87_local16 = {}

            local f87_local17 = function (f96_arg0)
                
            end

            local f87_local18 = nil
            local f87_local19 = EZOP_ChkFunc_InsideRange
            local f87_local20 = {0, 360, -10, 9999}
            local f87_local21 = true
            f87_local0:Add(EZOP_SetAct_ApproachTarget(f87_arg0, f87_local11, f87_local12, f87_local13, f87_local14, f87_local15, f87_local16, f87_local17, f87_local18, f87_local19, f87_local20, TransAct, f87_local21))
        else
            f87_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f87_local11 = 1
            local f87_local12 = TARGET_EVENT
            local f87_local13 = 0
            local f87_local14 = 0
            local f87_local15 = 0
            local f87_local16 = TARGET_EVENT
            local f87_local17 = EZOP_MOVETYPE._BOOST
            local f87_local18 = 50
            local f87_local19 = {}

            local f87_local20 = function (f97_arg0)
                
            end

            local f87_local21 = nil
            local f87_local22 = EZOP_ChkFunc_InsideRange
            local f87_local23 = {0, 360, -10, 9999}
            local f87_local24 = true
            local f87_local25 = false
            f87_local0:Add(EZOP_SetAct_ApproachBoostRise(f87_arg0, f87_local11, f87_local12, f87_local13, f87_local14, f87_local15, f87_local16, f87_local17, f87_local18, f87_local19, f87_local20, f87_local21, f87_local22, f87_local23, TransAct, f87_local24, f87_local25))
        end
        return f87_local0
        
    end

    OpSetArr[f3_arg1][992101] = function (f98_arg0, f98_arg1)
        local f98_local0 = EZOPArray.new()
        local f98_local1 = f98_arg0:GetExcelParam(42)
        local f98_local2 = f98_arg0:GetExcelParam(43)
        local f98_local3 = f98_arg0:GetExcelParam(44)
        local f98_local4 = f98_arg0:GetExcelParam(45)
        local f98_local5 = f98_arg0:GetExcelParam(46)
        local f98_local6 = f98_arg0:GetExcelParam(47)
        f98_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
        local f98_local7 = 10
        local f98_local8 = TARGET_EVENT
        local f98_local9 = TARGET_ENE_0
        local f98_local10 = EZOP_MOVETYPE._BOOST
        local f98_local11 = f98_local2 - 50
        local f98_local12 = {}

        local f98_local13 = function (f99_arg0)
            
        end

        local f98_local14 = nil
        local f98_local15 = EZOP_ChkFunc_InsideRange
        local f98_local16 = {0, 360, -10, 9999}
        local f98_local17 = true
        f98_local0:Add(EZOP_SetAct_ApproachTarget(f98_arg0, f98_local7, f98_local8, f98_local9, f98_local10, f98_local11, f98_local12, f98_local13, f98_local14, f98_local15, f98_local16, TransAct, f98_local17))
        return f98_local0
        
    end

    OpSetArr[f3_arg1][992102] = function (f100_arg0, f100_arg1)
        local f100_local0 = EZOPArray.new()
        local f100_local1 = f100_arg0:GetExcelParam(42)
        local f100_local2 = f100_arg0:GetExcelParam(43)
        local f100_local3 = f100_arg0:GetExcelParam(44)
        local f100_local4 = f100_arg0:GetExcelParam(45)
        local f100_local5 = f100_arg0:GetExcelParam(46)
        local f100_local6 = f100_arg0:GetExcelParam(47)
        f100_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
        local f100_local7 = 5
        local f100_local8 = TARGET_EVENT
        local f100_local9 = 0
        local f100_local10 = 0
        local f100_local11 = 0
        local f100_local12 = TARGET_ENE_0
        local f100_local13 = EZOP_MOVETYPE._BOOST
        local f100_local14 = f100_local2 - 50
        local f100_local15 = {}

        local f100_local16 = function (f101_arg0)
            
        end

        local f100_local17 = nil
        local f100_local18 = EZOP_ChkFunc_InsideRange
        local f100_local19 = {0, 360, -10, 9999}
        local f100_local20 = true
        local f100_local21 = false
        f100_local0:Add(EZOP_SetAct_ApproachBoostRise(f100_arg0, f100_local7, f100_local8, f100_local9, f100_local10, f100_local11, f100_local12, f100_local13, f100_local14, f100_local15, f100_local16, f100_local17, f100_local18, f100_local19, TransAct, f100_local20, f100_local21))
        return f100_local0
        
    end

    OpSetArr[f3_arg1][992111] = function (f102_arg0, f102_arg1)
        local f102_local0 = EZOPArray.new()
        local f102_local1 = f102_arg0:GetExcelParam(40)
        local f102_local2 = f102_arg0:GetExcelParam(42)
        local f102_local3 = f102_arg0:GetExcelParam(43)
        local f102_local4 = f102_arg0:GetExcelParam(44)
        local f102_local5 = f102_arg0:GetExcelParam(45)
        local f102_local6 = f102_arg0:GetExcelParam(46)
        local f102_local7 = f102_arg0:GetExcelParam(47)
        if f102_local1 == 0 then
            f102_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f102_local8 = 10
            local f102_local9 = TARGET_EVENT
            local f102_local10 = TARGET_ENE_0
            local f102_local11 = EZOP_MOVETYPE._BOOST
            local f102_local12 = f102_local3 - 50
            local f102_local13 = {EZOP_MakeAtkOp_NpcAcShoot(f102_local10, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f102_local10, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0.1, -1)}

            local f102_local14 = function (f103_arg0)
                
            end

            local f102_local15 = nil
            local f102_local16 = EZOP_ChkFunc_InsideRange
            local f102_local17 = {0, 360, -10, 9999}
            local f102_local18 = true
            f102_local0:Add(EZOP_SetAct_ApproachTarget(f102_arg0, f102_local8, f102_local9, f102_local10, f102_local11, f102_local12, f102_local13, f102_local14, f102_local15, f102_local16, f102_local17, TransAct, f102_local18))
        elseif f102_local1 == 1 then
            f102_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f102_local8 = 10
            local f102_local9 = TARGET_EVENT
            local f102_local10 = TARGET_ENE_0
            local f102_local11 = EZOP_MOVETYPE._BOOST
            local f102_local12 = f102_local3 - 50
            local f102_local13 = {EZOP_MakeAtkOp_NpcAcShoot(f102_local10, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f102_local10, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0.1, -1)}

            local f102_local14 = function (f104_arg0)
                
            end

            local f102_local15 = nil
            local f102_local16 = EZOP_ChkFunc_InsideRange
            local f102_local17 = {0, 360, -10, 9999}
            local f102_local18 = true
            f102_local0:Add(EZOP_SetAct_ApproachTarget(f102_arg0, f102_local8, f102_local9, f102_local10, f102_local11, f102_local12, f102_local13, f102_local14, f102_local15, f102_local16, f102_local17, TransAct, f102_local18))
        elseif f102_local1 == 2 then
            f102_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f102_local8 = 10
            local f102_local9 = TARGET_EVENT
            local f102_local10 = TARGET_ENE_0
            local f102_local11 = EZOP_MOVETYPE._BOOST
            local f102_local12 = f102_local3 - 50
            local f102_local13 = {EZOP_MakeAtkOp_NpcAcShoot(f102_local10, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f102_local10, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0.1, -1)}

            local f102_local14 = function (f105_arg0)
                
            end

            local f102_local15 = nil
            local f102_local16 = EZOP_ChkFunc_InsideRange
            local f102_local17 = {0, 360, -10, 9999}
            local f102_local18 = true
            f102_local0:Add(EZOP_SetAct_ApproachTarget(f102_arg0, f102_local8, f102_local9, f102_local10, f102_local11, f102_local12, f102_local13, f102_local14, f102_local15, f102_local16, f102_local17, TransAct, f102_local18))
        elseif f102_local1 == 3 then
            f102_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f102_local8 = 10
            local f102_local9 = TARGET_EVENT
            local f102_local10 = TARGET_ENE_0
            local f102_local11 = EZOP_MOVETYPE._BOOST
            local f102_local12 = f102_local3 - 50
            local f102_local13 = {EZOP_MakeAtkOp_NpcAcShoot(f102_local10, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f102_local10, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0.1, -1)}

            local f102_local14 = function (f106_arg0)
                
            end

            local f102_local15 = nil
            local f102_local16 = EZOP_ChkFunc_InsideRange
            local f102_local17 = {0, 360, -10, 9999}
            local f102_local18 = true
            f102_local0:Add(EZOP_SetAct_ApproachTarget(f102_arg0, f102_local8, f102_local9, f102_local10, f102_local11, f102_local12, f102_local13, f102_local14, f102_local15, f102_local16, f102_local17, TransAct, f102_local18))
        else
            f102_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_MESH)
            local f102_local8 = 10
            local f102_local9 = TARGET_EVENT
            local f102_local10 = TARGET_ENE_0
            local f102_local11 = EZOP_MOVETYPE._BOOST
            local f102_local12 = f102_local3 - 50
            local f102_local13 = {}

            local f102_local14 = function (f107_arg0)
                
            end

            local f102_local15 = nil
            local f102_local16 = EZOP_ChkFunc_InsideRange
            local f102_local17 = {0, 360, -10, 9999}
            local f102_local18 = true
            f102_local0:Add(EZOP_SetAct_ApproachTarget(f102_arg0, f102_local8, f102_local9, f102_local10, f102_local11, f102_local12, f102_local13, f102_local14, f102_local15, f102_local16, f102_local17, TransAct, f102_local18))
        end
        return f102_local0
        
    end

    OpSetArr[f3_arg1][992112] = function (f108_arg0, f108_arg1)
        local f108_local0 = EZOPArray.new()
        local f108_local1 = f108_arg0:GetExcelParam(40)
        local f108_local2 = f108_arg0:GetExcelParam(42)
        local f108_local3 = f108_arg0:GetExcelParam(43)
        local f108_local4 = f108_arg0:GetExcelParam(44)
        local f108_local5 = f108_arg0:GetExcelParam(45)
        local f108_local6 = f108_arg0:GetExcelParam(46)
        local f108_local7 = f108_arg0:GetExcelParam(47)
        if f108_local1 == 0 then
            f108_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f108_local8 = 5
            local f108_local9 = TARGET_EVENT
            local f108_local10 = 0
            local f108_local11 = 0
            local f108_local12 = 0
            local f108_local13 = TARGET_ENE_0
            local f108_local14 = EZOP_MOVETYPE._BOOST
            local f108_local15 = f108_local3 - 50
            local f108_local16 = {EZOP_MakeAtkOp_NpcAcShoot(f108_local13, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f108_local13, AI_WEAPON_PLACE_EnemyWep00, 0, 0, 0.1, -1)}

            local f108_local17 = function (f109_arg0)
                
            end

            local f108_local18 = nil
            local f108_local19 = EZOP_ChkFunc_InsideRange
            local f108_local20 = {0, 360, -10, 9999}
            local f108_local21 = true
            local f108_local22 = false
            f108_local0:Add(EZOP_SetAct_ApproachBoostRise(f108_arg0, f108_local8, f108_local9, f108_local10, f108_local11, f108_local12, f108_local13, f108_local14, f108_local15, f108_local16, f108_local17, f108_local18, f108_local19, f108_local20, TransAct, f108_local21, f108_local22))
        elseif f108_local1 == 1 then
            f108_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f108_local8 = 5
            local f108_local9 = TARGET_EVENT
            local f108_local10 = 0
            local f108_local11 = 0
            local f108_local12 = 0
            local f108_local13 = TARGET_ENE_0
            local f108_local14 = EZOP_MOVETYPE._BOOST
            local f108_local15 = f108_local3 - 50
            local f108_local16 = {EZOP_MakeAtkOp_NpcAcShoot(f108_local13, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f108_local13, AI_WEAPON_PLACE_EnemyWep01, 0, 0, 0.1, -1)}

            local f108_local17 = function (f110_arg0)
                
            end

            local f108_local18 = nil
            local f108_local19 = EZOP_ChkFunc_InsideRange
            local f108_local20 = {0, 360, -10, 9999}
            local f108_local21 = true
            local f108_local22 = false
            f108_local0:Add(EZOP_SetAct_ApproachBoostRise(f108_arg0, f108_local8, f108_local9, f108_local10, f108_local11, f108_local12, f108_local13, f108_local14, f108_local15, f108_local16, f108_local17, f108_local18, f108_local19, f108_local20, TransAct, f108_local21, f108_local22))
        elseif f108_local1 == 2 then
            f108_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f108_local8 = 5
            local f108_local9 = TARGET_EVENT
            local f108_local10 = 0
            local f108_local11 = 0
            local f108_local12 = 0
            local f108_local13 = TARGET_ENE_0
            local f108_local14 = EZOP_MOVETYPE._BOOST
            local f108_local15 = f108_local3 - 50
            local f108_local16 = {EZOP_MakeAtkOp_NpcAcShoot(f108_local13, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f108_local13, AI_WEAPON_PLACE_EnemyWep02, 0, 0, 0.1, -1)}

            local f108_local17 = function (f111_arg0)
                
            end

            local f108_local18 = nil
            local f108_local19 = EZOP_ChkFunc_InsideRange
            local f108_local20 = {0, 360, -10, 9999}
            local f108_local21 = true
            local f108_local22 = false
            f108_local0:Add(EZOP_SetAct_ApproachBoostRise(f108_arg0, f108_local8, f108_local9, f108_local10, f108_local11, f108_local12, f108_local13, f108_local14, f108_local15, f108_local16, f108_local17, f108_local18, f108_local19, f108_local20, TransAct, f108_local21, f108_local22))
        elseif f108_local1 == 3 then
            f108_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f108_local8 = 5
            local f108_local9 = TARGET_EVENT
            local f108_local10 = 0
            local f108_local11 = 0
            local f108_local12 = 0
            local f108_local13 = TARGET_ENE_0
            local f108_local14 = EZOP_MOVETYPE._BOOST
            local f108_local15 = f108_local3 - 50
            local f108_local16 = {EZOP_MakeAtkOp_NpcAcShoot(f108_local13, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0, 0.1, -1), EZOP_MakeAtkOp_Shoot00(f108_local13, AI_WEAPON_PLACE_EnemyWep03, 0, 0, 0.1, -1)}

            local f108_local17 = function (f112_arg0)
                
            end

            local f108_local18 = nil
            local f108_local19 = EZOP_ChkFunc_InsideRange
            local f108_local20 = {0, 360, -10, 9999}
            local f108_local21 = true
            local f108_local22 = false
            f108_local0:Add(EZOP_SetAct_ApproachBoostRise(f108_arg0, f108_local8, f108_local9, f108_local10, f108_local11, f108_local12, f108_local13, f108_local14, f108_local15, f108_local16, f108_local17, f108_local18, f108_local19, f108_local20, TransAct, f108_local21, f108_local22))
        else
            f108_arg0:SetNaviRouteSearchType(AI_NAVIGATE_SEARCH_TYPE_VOLUME)
            local f108_local8 = 5
            local f108_local9 = TARGET_EVENT
            local f108_local10 = 0
            local f108_local11 = 0
            local f108_local12 = 0
            local f108_local13 = TARGET_ENE_0
            local f108_local14 = EZOP_MOVETYPE._BOOST
            local f108_local15 = f108_local3 - 50
            local f108_local16 = {}

            local f108_local17 = function (f113_arg0)
                
            end

            local f108_local18 = nil
            local f108_local19 = EZOP_ChkFunc_InsideRange
            local f108_local20 = {0, 360, -10, 9999}
            local f108_local21 = true
            local f108_local22 = false
            f108_local0:Add(EZOP_SetAct_ApproachBoostRise(f108_arg0, f108_local8, f108_local9, f108_local10, f108_local11, f108_local12, f108_local13, f108_local14, f108_local15, f108_local16, f108_local17, f108_local18, f108_local19, f108_local20, TransAct, f108_local21, f108_local22))
        end
        return f108_local0
        
    end

    OpSetArr[f3_arg1][999151] = function (f114_arg0, f114_arg1)
        local f114_local0 = EZOPArray.new()
        local f114_local1 = TARGET_ENE_0
        local f114_local2 = 0.5
        local f114_local3 = {EZOP_MakeAtkOp_NpcAcShoot(TARGET_ENE_0, AI_WEAPON_PLACE_EnemyWep02, 0, 1, 0, 0, 0)}
        f114_local0:Add(EZOP_SetAct_StandShoot(f114_arg0, f114_local2, f114_local1, f114_local3))
        f114_arg0:SetTimer(5, 2)
        return f114_local0
        
    end

    
end

PRINT_TEXT("-----" .. LogHeader_Plan .. "FollowingAI Complete-----")

