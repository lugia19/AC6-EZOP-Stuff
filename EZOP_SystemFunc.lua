EZOP_TransitionNotifyIDDef = { _Turn = 1000, _QB = 1100, _Jump = 1200, _JumpEdgeJump = 1210, _CommonAttack = 1500, _NPAC_Hover = 9900 }
EZOP_MOVETYPE = { _WAIT = 0, _TURN = 1000, _TURN_FORMAL = 1010, _RELATIVE_TURN = 1100, _LOOPTURN_FORMAL = 1310, _WALK = 2000, _RUN = 3000, _BOOST = 4000, _QB = 5000, _QB2 = 5001, _QB_FORMAL = 5010, _ASSULT_BOOST = 5900, _JUMP = 6000, _JUMP2 = 6001, _JUMP_FORMAL = 6010, _LOOPJUMP_FORMAL = 6011, _NPAC_HOVER = 6020, _FLOATING_FALL = 7000 }
EZOP_ARRIVE_JUDGE_TYPE = { _CapsuleToCapsule = 0, _Orrigin = 1 }
EZOP_AIDestPointMin = POINT_AIDestPoint_Search_0
EZOP_AIDestPointMax = POINT_AIDestPoint_Search_Max
EZOP_LAYER = { _MOVE01 = 2, _MOVETYPE = 3, _ATTACK01 = 4, _ATTACK02 = 5, _ATTACK03 = 6, _ATTACK04 = 7, _EXTRA01 = 8, _INTERRUPT = 9, _LAYER_END = 11 }
PRINT_TEXT(LogHeader_Plan .. "SystemFunc: Define OK")
local f0_local0 = 0

local EnableDebugLogger = true

function LogParams(...)
    local params = {...}
    local paramString = ""
    
    for i, param in ipairs(params) do
        paramString = paramString .. tostring(param)
        if i < #params then
            paramString = paramString .. ", "
        end
    end
    
    Log("Function called with parameters: " .. paramString)
end

function GetPropertyName(tbl, value)
    for k, v in pairs(tbl) do
        if v == value then
            return k
        end
    end
    return nil -- Return nil if the value is not found
end

function Log(message)
    if EnableDebugLogger == false then
        return
    end

    -- if not set, default to debug-logs subfolder
    if DebugLoggerFolder == nil then
        DebugLoggerFolder = "debug-logs"
    end

    -- ensure folder ends with a trailing \ or /
    if string.sub(DebugLoggerFolder, -1) ~= "\\" and string.sub(DebugLoggerFolder, -1) ~= "/" then
        if string.find(DebugLoggerFolder, "/") then
            DebugLoggerFolder = DebugLoggerFolder .. "/"
        else
            DebugLoggerFolder = DebugLoggerFolder .. "\\"
        end
    end
    os.execute("mkdir " .. DebugLoggerFolder) -- ensure the folder exists

    local callerInfo = debug.getinfo(2)
    if callerInfo == nil then
        callerInfo = debug.getinfo(1)
    end

    message = message or ""
    local sourceFile = string.gsub(callerInfo.source, "%.lua$", "")

    --ensure the subdirectory for the current file exists
    os.execute("mkdir " .. DebugLoggerFolder .. sourceFile)
    local fileWriter = io.open(
        DebugLoggerFolder ..
        sourceFile .. "\\" ..
        sourceFile .. "_log_" .. os.date("%d") .. "-" .. os.date("%m") .. "-" .. os.date("%y") .. ".log",
        "a+")

    if callerInfo.namewhat == "" then
        fileWriter:write("[" .. os.date("%X") .. "] (Line #" .. callerInfo.currentline .. ") " .. message .. "\n")
    else
        fileWriter:write("[" ..
            os.date("%X") .. "] (" .. callerInfo.name .. " - Line #" .. callerInfo.currentline .. ") " .. message .. "\n")
    end

    fileWriter:close()
end

function EZOP_MakeHandle(f1_arg0)
    f0_local0 = f0_local0 + 1
    return f0_local0
end

function EZOP_GetInstanceHandle(f2_arg0)
    return f2_arg0:GetNumber(VALUE_ID_EZOP_InstansHandle)
end

local f0_local1 = function(f3_arg0, f3_arg1, f3_arg2)
    if f3_arg0:GetAiThinkParam_AILayerLaunch(f3_arg1) then
        f3_arg0:RegistOperationLayer(f3_arg1, 99, "LayerCommonFunc", f3_arg2)
    end
end

function EZOP_LayerSetup(f4_arg0, f4_arg1)
    f4_arg0:SetNumber(VALUE_ID_LOGIC_ID, f4_arg1)
    local f4_local0 = EZOP_MakeHandle(f4_arg0)
    f4_arg0:SetNumber(VALUE_ID_EZOP_InstansHandle, f4_local0)
    SetDefaultOpControlLayer(f4_arg0)
    f0_local1(f4_arg0, EZOP_LAYER._MOVE01, "Move01")
    f0_local1(f4_arg0, EZOP_LAYER._MOVETYPE, "MoveType")
    f0_local1(f4_arg0, EZOP_LAYER._ATTACK01, "Attack01")
    f0_local1(f4_arg0, EZOP_LAYER._ATTACK02, "Attack02")
    f0_local1(f4_arg0, EZOP_LAYER._ATTACK03, "Attack03")
    f0_local1(f4_arg0, EZOP_LAYER._ATTACK04, "Attack04")
    f0_local1(f4_arg0, EZOP_LAYER._EXTRA01, "EXTRA01")
    f0_local1(f4_arg0, EZOP_LAYER._INTERRUPT, "Interupt")
    if type(EZOP_AsyncNavCheckTargetSet[f4_arg1]) == "nil" then
        EZOP_AsyncNavCheckTargetSet[f4_arg1] = {}
    end
    if type(EZOP_AsyncNavCheckTargetSet[f4_arg1][f4_local0]) == "nil" then
        EZOP_AsyncNavCheckTargetSet[f4_arg1][f4_local0] = {}
    end
    EZOP_InitializeTurretMode(f4_arg0)
end

function EZOP_SetUpInterruptFunc(f5_arg0, f5_arg1)
    local f5_local0 = f5_arg0:GetNumber(VALUE_ID_LOGIC_ID)
    local f5_local1 = EZOP_GetInstanceHandle(f5_arg0)
    EZOP_CharUnipueInterruptFuncArr[f5_local0] = f5_arg1
    if type(EZOP_ActUnipueInterruptFuncArr[f5_local0]) == "nil" then
        EZOP_ActUnipueInterruptFuncArr[f5_local0] = {}
    end
    if type(EZOP_ActUnipueInterruptFuncArr[f5_local0][f5_local1]) == "nil" then
        EZOP_ActUnipueInterruptFuncArr[f5_local0][f5_local1] = nil
    end
end

function EZOP_SetUpActUniqueInterruptFunc(f6_arg0, f6_arg1)
    local f6_local0 = f6_arg0:GetNumber(VALUE_ID_LOGIC_ID)
    local f6_local1 = EZOP_GetInstanceHandle(f6_arg0)
    if type(EZOP_ActUnipueInterruptFuncArr[f6_local0]) == "nil" then
        EZOP_ActUnipueInterruptFuncArr[f6_local0] = {}
    end
    if type(EZOP_ActUnipueInterruptFuncArr[f6_local0][f6_local1]) == "nil" then
        EZOP_ActUnipueInterruptFuncArr[f6_local0][f6_local1] = nil
    end
    EZOP_ActUnipueInterruptFuncArr[f6_local0][f6_local1] = f6_arg1
end

function EZOP_GetActUniqueInterruptFunc(f7_arg0)
    local f7_local0 = f7_arg0:GetNumber(VALUE_ID_LOGIC_ID)
    local f7_local1 = EZOP_GetInstanceHandle(f7_arg0)
    return EZOP_ActUnipueInterruptFuncArr[f7_local0][f7_local1]
end

function EZOP_UseInterrupt(f8_arg0, f8_arg1, f8_arg2, f8_arg3, f8_arg4, f8_arg5, f8_arg6, f8_arg7, f8_arg8, f8_arg9,
                           f8_arg10)
    f8_arg0:RegistOperationCallback(EZOP_LAYER._INTERRUPT, f8_arg1)
    if f8_arg1 == INTERUPT_ActivateSpecialEffect then
        local f8_local0 = f8_arg2
        local f8_local1 = f8_arg3
        f8_arg0:AddObserveSpecialEffectAttribute(f8_local0, f8_local1)
    elseif f8_arg1 == INTERUPT_DeActivateSpecialEffect then
        local f8_local0 = f8_arg2
        local f8_local1 = f8_arg3
        f8_arg0:AddObserveSpecialEffectAttribute(f8_local0, f8_local1)
    elseif f8_arg1 == INTERUPT_LineDistance then
        local f8_local0 = f8_arg2
        local f8_local1 = f8_arg3
        local f8_local2 = f8_arg4
        f8_arg0:SetInterruptParam_LineDistance(f8_local0, f8_local1, f8_local2)
    elseif f8_arg1 == INTERUPT_Inside_ObserveArea then
        local f8_local0 = f8_arg2
        local f8_local1 = f8_arg3
        local f8_local2 = f8_arg4
        local f8_local3 = f8_arg5
        local f8_local4 = f8_arg6
        local f8_local5 = f8_arg7
        f8_arg0:AddObserveArea(f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5)
    elseif f8_arg1 == INTERUPT_DangerousBullet then
    elseif f8_arg1 == INTERUPT_ActivateAiActionType then
        local f8_local0 = f8_arg2
        f8_arg0:SetInterruptParam_AiActionTypeChanged(f8_local0)
    elseif f8_arg1 == INTERUPT_DeactivateAiActionType then
        local f8_local0 = f8_arg2
        f8_arg0:SetInterruptParam_AiActionTypeChanged(f8_local0)
    elseif f8_arg1 == INTERUPT_TransitionAiActType then
        local f8_local0 = f8_arg2
        f8_arg0:SetInterruptParam_TransitionAiActType(f8_local0)
    end
end

function EZOP_StopInterrupt(f9_arg0, f9_arg1)
    f9_arg0:UnregistOperationCallback(EZOP_LAYER._INTERRUPT, f9_arg1)
end

function EZOP_MakeInterruptActLotTable(f10_arg0, f10_arg1)
    if f10_arg1 == nil then
        return
    end
    local f10_local0 = f10_arg0:GetNumber(VALUE_ID_LOGIC_ID)
    local f10_local1 = f10_arg0:GetAiChrEntityId()
    local f10_local2 = f10_arg0:GetNumber(VALUE_ID_INSTANCE_ID)
    lotTableInstance[f10_local0][f10_local1][f10_local2] = EZOP_MakeActLotTable(f10_arg1)
end

function EZOP_ExecInterruptAction(f11_arg0, f11_arg1)
    EZOP_Replanning(f11_arg0)
    EZOP_MakeInterruptActLotTable(f11_arg0, f11_arg1)
end

function EZOP_SetAltitude(f12_arg0, f12_arg1)
    if f12_arg1 ~= nil then
        f12_arg0:SetNumber(VALUE_ID_FLYALT_HEIGHT, f12_arg1)
    end
end

function EZOP_SetGroundAltitude(f13_arg0, f13_arg1)
    if f13_arg1 ~= nil then
        f13_arg0:SetNumber(VALUE_ID_FLYALT_GROUNDHEIGHT, f13_arg1)
    end
end

function CommonActionInitializeFunc(f14_arg0)
    f14_arg0:SetNumber(VALUE_ID_CHECKABLE_TAEFLAGS, 0)
    EZOP_SetUpActUniqueInterruptFunc(f14_arg0, nil)
    EZOP_StopInterrupt(f14_arg0, INTERUPT_DangerousBullet)
end

function EZOP_MakeActLotTable(f15_arg0)
    local f15_local0 = {}
    local f15_local1 = 1
    for f15_local4, f15_local5 in pairs(f15_arg0) do
        f15_local0[f15_local1] = { f15_local5, f15_local4 }
        f15_local1 = f15_local1 + 1
    end
    return f15_local0
end

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

PRINT_TEXT(LogHeader_Plan .. "SystemFunc: SysFunc OK")
PRINT_TEXT("-----" .. LogHeader_Plan .. "SystemFunc Complete-----")
