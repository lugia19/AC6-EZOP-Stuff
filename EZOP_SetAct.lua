EZOP_OPERATION = { CLEAR_OPERATION = 0, WAIT = 1000, SEARCH_COVER_POINT = 1010, SEARCH_MOVE_POINT = 1020, SEARCH_SHOOTASSET_POINT = 1040, ABSORPTION_TARGETPOINT = 1100, TURN = 1200, TURN_FORMAL = 1210, RELATIVE_TURN = 1220, TANKTURN = 1300, LOOPTURN_FORMAL = 1310, MOVE_APPROACH = 2000, MOVE_APPROACH_FORWARD = 2001, MOVE_APPROACH_NAVI = 2010, MOVE_SIDEWAY = 2100, MOVE_LEAVE = 2200, MOVE_LEAVE_FORWARD = 2201, MOVE_KEEPDIST_NAVI = 2300, MOVE_KEEPDIST_NAVI2 = 2301, MOVE_KEEPDIST_NAVI3 = 2302, MOVE_KEEPDIST_NAVI4 = 2303, MOVE_KEEPDIST_NAVI5 = 2304, MOVE_KEEPDIST_NAVI5_SANDWORM = 2305, MoveKeepDistance_Navi_Air = 2310, MOVE_BOOST_RISE = 2400, MOVE_COMMON_FOMAL = 2500, MOVE_FLOAT_NONAVI = 2590, MOVE_ROUTE_POINT = 2900, MOVE_COVER_POINT = 2910, MOVE_COVER_POINT_ASYNC = 2911, MOVE_SNIPE_POINT = 2920, MOVE_MOVE_POINT_ASYNC = 2930, MOVE_SHOOTASSET_POINT_ASYNC = 2940, QUICK_BOOST = 3000, QUICK_BOOST_FORMAL = 3010, ASSULT_BOOST = 3900, JUMP = 3100, JUMP3 = 3102, JUMP_FORMAL = 3110, LOOPJUMP_FORMAL = 3120, NPAC_HOVER = 3130, FLOATING_FALL = 3200, ATTACK_1 = 4000, ATTACK_2 = 4001, MULTI_ATTACK_1 = 4010, MULTI_ATTACK_2 = 4011, MULTI_ATTACK_3 = 4012, COVER_ATTACK = 4020, COVER_ATTACK_2 = 4021, ACTION_1 = 4100, SWITCH_MODE = 4900, ROOT_MOVE = 7000, UROURO_MOVE = 7100, COMMON_STAND_ATTACK = 104000, COMMON_UPPERBODY_ATTACK = 104010 }
PRINT_TEXT(LogHeader_Plan .. "SetAct: OpID OK")
EZOP_OPERATION_SET = {
    [EZOP_OPERATION.CLEAR_OPERATION] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_ClearOperation }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_ClearOperation }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_ClearOperation }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_ClearOperation }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_ClearOperation }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_ClearOperation }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_ClearOperation }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_ClearOperation } },
    [EZOP_OPERATION.WAIT] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Wait }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.SEARCH_COVER_POINT] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_SearchCoverPoint }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.SEARCH_MOVE_POINT] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_SearchMovePoint }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.SEARCH_SHOOTASSET_POINT] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_SearchShootAssetPoint }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.ABSORPTION_TARGETPOINT] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_AbsorptionTargetPoint }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.TURN] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Wait }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack2_01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack2_02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack2_03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack2_04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.TURN_FORMAL] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Wait }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.RELATIVE_TURN] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Wait }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.TANKTURN] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Wait }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_TankTurn }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.LOOPTURN_FORMAL] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Wait }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_APPROACH] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_ApproachTarget }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_SIDEWAY] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_SidewayMove }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_LEAVE] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_LeaveFromTarget }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_LEAVE_FORWARD] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_LeaveFromTarget_Forward }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_KEEPDIST_NAVI] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_KEEPDIST_NAVI2] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi2 }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_KEEPDIST_NAVI3] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi2 }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack2_01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack2_02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack2_03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack2_04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_KEEPDIST_NAVI4] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi4 }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack2_01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack2_02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack2_03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack2_04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_KEEPDIST_NAVI5] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi4 }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack3_01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack3_02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack3_03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack3_04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_KEEPDIST_NAVI5_SANDWORM] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi4_SandWorm }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack3_01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack3_02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack3_03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack3_04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MoveKeepDistance_Navi_Air] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi_Air }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_BOOST_RISE] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_BoostRise }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_COMMON_FOMAL] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_CommonMove }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_FLOAT_NONAVI] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveFolatNoNavi }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_ROUTE_POINT] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveRoutePoint }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_COVER_POINT] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveToCoverPoint }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CoverCall_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_COVER_POINT_ASYNC] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveToCoverPointAsync }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CoverCall_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_SNIPE_POINT] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveToSnipePoint }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_MOVE_POINT_ASYNC] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveToMovePointAsync }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CoverCall_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MOVE_SHOOTASSET_POINT_ASYNC] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveToShootAssetPointAsync }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.QUICK_BOOST] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_QuickBoost }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.QUICK_BOOST_FORMAL] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.ASSULT_BOOST] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.JUMP] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Jump }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.JUMP3] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Jump }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack2_01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack2_02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack2_03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack2_04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.JUMP_FORMAL] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.NPAC_HOVER] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.FLOATING_FALL] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveToTarget_FloatingFall }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.ATTACK_1] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_Attack }, [EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.ATTACK_2] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_Attack2 }, [EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MULTI_ATTACK_1] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MULTI_ATTACK_2] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack2_01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack2_02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack2_03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack2_04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.MULTI_ATTACK_3] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack3_01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack3_02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack3_03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack3_04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.COMMON_STAND_ATTACK] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.COMMON_UPPERBODY_ATTACK] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_TrrigerOperation_SetUpActInterrupt } },
    [EZOP_OPERATION.COVER_ATTACK] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.COVER_ATTACK_2] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 }, [EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.ACTION_1] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_CallActionExec }, [EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.SWITCH_MODE] = { [EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_CallActionExec }, [EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal }, [EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.ROOT_MOVE] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_RootMove }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } },
    [EZOP_OPERATION.UROURO_MOVE] = { [EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_UroUroMove }, [EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType }, [EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 }, [EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 }, [EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 }, [EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 }, [EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal }, [EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt } }
}
PRINT_TEXT(LogHeader_Plan .. "SetAct: OpSet OK")

function EZOP_SetAct_ClearOperation(f1_arg0, f1_arg1)
    if TransAct == nil then
        TransAct = "next"
    end
    return { EZOP_OPERATION.CLEAR_OPERATION, f1_arg1, { nil }, { { TransAct } }, false }
end

function EZOP_SetAct_Wait(ai, f2_arg1, f2_arg2, InterruptSetupFunc_arg, InterruptFunc_arg, f2_arg5)
    if f2_arg5 == nil then
        f2_arg5 = "next"
    end
    return { EZOP_OPERATION.WAIT, f2_arg1, { nil, f2_arg1, f2_arg2, InterruptSetupFunc_arg, InterruptFunc_arg }, { { f2_arg5 } }, false }
end

function EZOP_SetAct_ApproachTarget(ai, unk_float_arg, target, turn_target_type, movement_type, desired_target_distance,
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
        unk_float_arg,
        {
            run_on_end,
            unk_float_arg,
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

function EZOP_SetAct_ApproachTarget_NoNavi(ai, f4_arg1, target, f4_arg3, f4_arg4, desired_target_distance, f4_arg6,
                                           f4_arg7,
                                           f4_arg8, f4_arg9, f4_arg10, f4_arg11, f4_arg12)
    if f4_arg11 == nil then
        f4_arg11 = "next"
    end
    local f4_local0 = nil
    if f4_arg12 == true then
        f4_local0 = f4_arg11
    end
    return { EZOP_OPERATION.MOVE_APPROACH, f4_arg1, { f4_arg6, f4_arg1, target, f4_arg4, f4_arg3, desired_target_distance, f4_arg7, f4_arg8, false }, { { f4_arg11, EZOP_OpEndChk_CloserThan, { target, desired_target_distance, EZOP_ARRIVE_JUDGE_TYPE._CapsuleToCapsule } }, { f4_local0 } }, true, { f4_arg9, f4_arg10 } }
end

function EZOP_SetAct_ApproachTarget_NoNavi_SandWorm(ai, f5_arg1, f5_arg2, f5_arg3, f5_arg4, f5_arg5, f5_arg6,
                                                    f5_arg7, f5_arg8, f5_arg9, f5_arg10, f5_arg11, f5_arg12)
    if f5_arg11 == nil then
        f5_arg11 = "next"
    end
    local f5_local0 = nil
    if f5_arg12 == true then
        f5_local0 = f5_arg11
    end
    return { EZOP_OPERATION.MOVE_APPROACH, f5_arg1, { f5_arg6, f5_arg1, f5_arg2, f5_arg4, f5_arg3, f5_arg5, f5_arg7, f5_arg8, false }, { { f5_arg11, EZOP_OpEndChk_CloserThanXZ, { f5_arg2, f5_arg5, EZOP_ARRIVE_JUDGE_TYPE._CapsuleToCapsule } }, { f5_local0 } }, true, { f5_arg9, f5_arg10 } }
end

function EZOP_SetAct_LeaveTarget(f6_arg0, f6_arg1, f6_arg2, f6_arg3, f6_arg4, f6_arg5, f6_arg6, f6_arg7, f6_arg8, f6_arg9,
                                 f6_arg10, f6_arg11, f6_arg12)
    if f6_arg11 == nil then
        f6_arg11 = "next"
    end
    local f6_local0 = nil
    if f6_arg12 == true then
        f6_local0 = f6_arg11
    end
    return {
        EZOP_OPERATION.MOVE_LEAVE,
        f6_arg1,
        {
            f6_arg6,
            f6_arg1,
            f6_arg2,
            f6_arg4,
            f6_arg5,
            f6_arg3,
            f6_arg7,
            f6_arg8
        },
        {
            {
                f6_arg11,
                EZOP_OpEndChk_FartherThan,
                {
                    f6_arg2,
                    f6_arg5,
                    EZOP_ARRIVE_JUDGE_TYPE._CapsuleToCapsule
                }
            },
            {
                f6_local0
            }
        },
        false,
        {
            f6_arg9,
            f6_arg10
        }
    }
end

function EZOP_SetAct_SideWayMove(f7_arg0, f7_arg1, f7_arg2, f7_arg3, f7_arg4, f7_arg5, f7_arg6, f7_arg7, f7_arg8, f7_arg9,
                                 f7_arg10, f7_arg11)
    if f7_arg11 == nil then
        f7_arg11 = "next"
    end
    return { EZOP_OPERATION.MOVE_SIDEWAY, f7_arg1, { f7_arg6, f7_arg1, f7_arg2, f7_arg4, f7_arg5, f7_arg3, f7_arg7, f7_arg8 }, { { f7_arg11 } }, false, { f7_arg9, f7_arg10 } }
end

function EZOP_SetAct_CommonMove(ai, UNK_FLOAT, target, turn_type, movement_type, f8_arg5, run_on_end,
                                InterruptSetupFunc_arg, InterruptFunc_arg, ChkFunc_arg,
                                ChkParam_arg, TransAct_arg)
    if TransAct_arg == nil then
        TransAct_arg = "next"
    end

    return {
        EZOP_OPERATION.MOVE_COMMON_FOMAL,
        UNK_FLOAT,
        {
            run_on_end,
            UNK_FLOAT,
            target,
            movement_type,
            f8_arg5,
            turn_type,
            InterruptSetupFunc_arg,
            InterruptFunc_arg,
            AI_NAVIGATE_SEARCH_TYPE_MESH
        },
        {
            {
                TransAct_arg
            }
        },
        false,
        {
            ChkFunc_arg,
            ChkParam_arg
        }
    }
end

function EZOP_SetAct_CommonMove_Air(f9_arg0, f9_arg1, f9_arg2, f9_arg3, f9_arg4, f9_arg5, f9_arg6, f9_arg7, f9_arg8,
                                    f9_arg9, f9_arg10, f9_arg11)
    if f9_arg11 == nil then
        f9_arg11 = "next"
    end
    return { EZOP_OPERATION.MOVE_COMMON_FOMAL, f9_arg1, { f9_arg6, f9_arg1, f9_arg2, f9_arg4, f9_arg5, f9_arg3, f9_arg7, f9_arg8, AI_NAVIGATE_SEARCH_TYPE_VOLUME }, { { f9_arg11 } }, false, { f9_arg9, f9_arg10 } }
end

function EZOP_SetAct_MoveFloatNoNavi(f10_arg0, f10_arg1, f10_arg2, f10_arg3, f10_arg4, f10_arg5, f10_arg6, f10_arg7,
                                     f10_arg8, f10_arg9, f10_arg10, f10_arg11, f10_arg12, f10_arg13, f10_arg14, f10_arg15)
    if f10_arg14 == nil then
        f10_arg14 = "next"
    end
    return { EZOP_OPERATION.MOVE_FLOAT_NONAVI, f10_arg1, { f10_arg13, f10_arg1, f10_arg2, f10_arg3, f10_arg4, f10_arg5, f10_arg6, f10_arg7, f10_arg8, f10_arg9, f10_arg10, f10_arg11, f10_arg12 }, { { f10_arg14 } }, false, { ChkFunc, ChkParam } }
end

function EZOP_SetAct_ApproachBoostRise(f11_arg0, f11_arg1, f11_arg2, f11_arg3, f11_arg4, f11_arg5, f11_arg6, f11_arg7,
                                       f11_arg8, f11_arg9, f11_arg10, f11_arg11, f11_arg12, f11_arg13, f11_arg14,
                                       f11_arg15, f11_arg16)
    if f11_arg14 == nil then
        f11_arg14 = "next"
    end
    if f11_arg16 == nil then
        f11_arg16 = true
    end
    local f11_local0 = nil
    if f11_arg15 == true then
        f11_local0 = f11_arg14
    end
    return { EZOP_OPERATION.MOVE_BOOST_RISE, f11_arg1, { f11_arg9, f11_arg1, f11_arg2, f11_arg7, f11_arg6, f11_arg3, f11_arg4, f11_arg5, f11_arg8, f11_arg10, f11_arg11, f11_arg16 }, { { f11_arg14, EZOP_OpEndChk_CloserThan, { f11_arg2, f11_arg8, EZOP_ARRIVE_JUDGE_TYPE._CapsuleToCapsule } }, { f11_local0 } }, false, { f11_arg12, f11_arg13 } }
end

function EZOP_SetAct_QuickBoost(f12_arg0, f12_arg1, f12_arg2, f12_arg3, f12_arg4, f12_arg5, f12_arg6, f12_arg7, f12_arg8,
                                f12_arg9)
    if f12_arg9 == nil then
        f12_arg9 = "next"
    end
    return { EZOP_OPERATION.QUICK_BOOST_FORMAL, f12_arg1, { f12_arg4, f12_arg1, f12_arg2, EZOP_MOVETYPE._QB_FORMAL, f12_arg3, 1, f12_arg7, f12_arg8 }, { { f12_arg9 } }, false, { f12_arg5, f12_arg6 } }
end

function EZOP_SetAct_QuickBoostAlt(f13_arg0, f13_arg1, f13_arg2, f13_arg3, f13_arg4, f13_arg5, f13_arg6, f13_arg7,
                                   f13_arg8, f13_arg9)
    if f13_arg9 == nil then
        f13_arg9 = "next"
    end
    return { EZOP_OPERATION.QUICK_BOOST_FORMAL, f13_arg1, { f13_arg4, f13_arg1, f13_arg2, EZOP_MOVETYPE._QB_FORMAL, f13_arg3, 2, f13_arg7, f13_arg8 }, { { f13_arg9 } }, false, { f13_arg5, f13_arg6 } }
end

function EZOP_SetAct_NPC_AssultBoost(f14_arg0, f14_arg1, f14_arg2, f14_arg3, f14_arg4, f14_arg5, f14_arg6, f14_arg7,
                                     f14_arg8, f14_arg9, f14_arg10, f14_arg11, f14_arg12, f14_arg13, f14_arg14)
    if f14_arg14 == nil then
        f14_arg14 = "next"
    end
    return { EZOP_OPERATION.ASSULT_BOOST, f14_arg1, { f14_arg9, f14_arg1, f14_arg2, EZOP_MOVETYPE._ASSULT_BOOST, f14_arg3, f14_arg2, f14_arg12, f14_arg13, f14_arg4, f14_arg8 }, { { f14_arg14, EZOP_OpEndChk_CloserThan, { f14_arg2, f14_arg5, EZOP_ARRIVE_JUDGE_TYPE._CapsuleToCapsule } }, { f14_arg14 } }, false, { f14_arg10, f14_arg11 } }
end

function EZOP_SetAct_Turn(f15_arg0, f15_arg1, f15_arg2, f15_arg3, f15_arg4, f15_arg5, f15_arg6)
    if f15_arg6 == nil then
        f15_arg6 = "next"
    end
    return { EZOP_OPERATION.TURN_FORMAL, f15_arg1, { f15_arg3, f15_arg1, f15_arg2, EZOP_MOVETYPE._TURN_FORMAL, 1 }, { { f15_arg6, EZOP_OpEndChk_IsInsideAngle, { f15_arg2, 60, AI_DIR_TYPE_F } }, { f15_arg6 } }, true, { f15_arg4, f15_arg5 },
        AI_ORDER_TYPE_ONESHOT }
end

function EZOP_SetAct_Relative_Turn(f16_arg0, f16_arg1, f16_arg2, f16_arg3, f16_arg4, f16_arg5, f16_arg6, f16_arg7)
    if f16_arg7 == nil then
        f16_arg7 = "next"
    end
    return { EZOP_OPERATION.RELATIVE_TURN, f16_arg1, { f16_arg4, f16_arg1, f16_arg2, EZOP_MOVETYPE._RELATIVE_TURN, 1, f16_arg3 }, { { f16_arg7 } }, true, { f16_arg5, f16_arg6 },
        AI_ORDER_TYPE_ONESHOT }
end

function EZOP_SetAct_QBTurn(f17_arg0, f17_arg1, f17_arg2, f17_arg3, f17_arg4, f17_arg5, f17_arg6)
    if f17_arg6 == nil then
        f17_arg6 = "next"
    end
    return { EZOP_OPERATION.TURN_FORMAL, f17_arg1, { f17_arg3, f17_arg1, f17_arg2, EZOP_MOVETYPE._TURN_FORMAL, 2 }, { { f17_arg6 } }, true, { f17_arg4, f17_arg5 } }
end

function EZOP_SetAct_LoopTurn(f18_arg0, f18_arg1, f18_arg2, f18_arg3, f18_arg4, f18_arg5, f18_arg6, f18_arg7, f18_arg8)
    if f18_arg8 == nil then
        f18_arg8 = "next"
    end
    return { EZOP_OPERATION.LOOPTURN_FORMAL, f18_arg1, { f18_arg5, f18_arg1, f18_arg2, EZOP_MOVETYPE._LOOPTURN_FORMAL, f18_arg4 }, { { f18_arg8, EZOP_OpEndChk_InsideRange, { f18_arg3, f18_arg4, -1, 9999999 } }, { f18_arg8 } }, true, { f18_arg6, f18_arg7 } }
end

function EZOP_SetAct_Jump(f19_arg0, f19_arg1, f19_arg2, f19_arg3, f19_arg4, f19_arg5, f19_arg6, f19_arg7, f19_arg8)
    if f19_arg8 == nil then
        f19_arg8 = "next"
    end
    return { EZOP_OPERATION.JUMP_FORMAL, f19_arg1, { f19_arg5, f19_arg1, f19_arg2, EZOP_MOVETYPE._JUMP_FORMAL, f19_arg3, f19_arg4 }, { { f19_arg8 } }, false, { f19_arg6, f19_arg7 } }
end

function EZOP_SetAct_LoopJump(f20_arg0, f20_arg1, f20_arg2, f20_arg3, f20_arg4, f20_arg5, f20_arg6, f20_arg7, f20_arg8)
    if f20_arg8 == nil then
        f20_arg8 = "next"
    end
    return { EZOP_OPERATION.JUMP_FORMAL, f20_arg1, { f20_arg5, f20_arg1, f20_arg2, EZOP_MOVETYPE._LOOPJUMP_FORMAL, f20_arg3, f20_arg4 }, { { f20_arg8 } }, false, { f20_arg6, f20_arg7 } }
end

function EZOP_SetAct_NPAC_Hover(f21_arg0, f21_arg1, f21_arg2, f21_arg3, f21_arg4, f21_arg5, f21_arg6, f21_arg7)
    if f21_arg7 == nil then
        f21_arg7 = "next"
    end
    IsExecHover = 1
    return { EZOP_OPERATION.NPAC_HOVER, f21_arg1, { f21_arg4, f21_arg1, f21_arg2, EZOP_MOVETYPE._NPAC_HOVER, f21_arg3, IsExecHover }, { { f21_arg7 } }, false, { f21_arg5, f21_arg6 } }
end

function EZOP_SetAct_StandShoot(f22_arg0, f22_arg1, f22_arg2, f22_arg3, f22_arg4, f22_arg5, f22_arg6, f22_arg7, f22_arg8,
                                f22_arg9)
    if f22_arg8 == nil then
        f22_arg8 = "next"
    end
    local f22_local0 = f22_arg8
    if f22_arg9 == false then
        f22_local0 = nil
    end
    return { EZOP_OPERATION.COMMON_UPPERBODY_ATTACK, f22_arg1, { f22_arg3, f22_arg1, f22_arg2, f22_arg6, f22_arg7 }, { { f22_local0 } }, false, { f22_arg4, f22_arg5 } }
end

function EZOP_SetAct_Melee(f23_arg0, f23_arg1, f23_arg2, f23_arg3, f23_arg4, f23_arg5, f23_arg6, f23_arg7, f23_arg8)
    if f23_arg7 == nil then
        f23_arg7 = "next"
    end
    local f23_local0 = f23_arg7
    if f23_arg8 == false then
        f23_local0 = nil
    end
    local f23_local1 = EZOP_MakeAtkOp_Melee(f23_arg2, f23_arg3, f23_arg4, false)
    local f23_local2 = { f23_local1 }
    return { EZOP_OPERATION.COMMON_STAND_ATTACK, f23_arg1, { f23_local2, f23_arg1, f23_arg2 }, { { f23_local0 } }, false, { f23_arg5, f23_arg6 } }
end

function EZOP_SetAct_ComboMelee(f24_arg0, f24_arg1, f24_arg2, f24_arg3, f24_arg4, f24_arg5, f24_arg6, f24_arg7, f24_arg8)
    if f24_arg7 == nil then
        f24_arg7 = "next"
    end
    local f24_local0 = f24_arg7
    if f24_arg8 == false then
        f24_local0 = nil
    end
    local f24_local1 = EZOP_MakeAtkOp_Melee(f24_arg2, f24_arg3, f24_arg4, true)
    local f24_local2 = { f24_local1 }
    return { EZOP_OPERATION.COMMON_STAND_ATTACK, f24_arg1, { f24_local2, f24_arg1, f24_arg2 }, { { f24_local0 } }, false, { f24_arg5, f24_arg6 } }
end

function EZOP_SetAct_MultiAttack(f25_arg0, f25_arg1, f25_arg2, f25_arg3, f25_arg4, f25_arg5, f25_arg6, f25_arg7)
    if f25_arg6 == nil then
        f25_arg6 = "next"
    end
    local f25_local0 = f25_arg6
    if f25_arg7 == false then
        f25_local0 = nil
    end
    return { EZOP_OPERATION.COMMON_STAND_ATTACK, f25_arg1, { f25_arg3, f25_arg1, f25_arg2 }, { { f25_local0 } }, false, { f25_arg4, f25_arg5 } }
end

function EZOP_ReverseFunction_OpEndChk(f26_arg0, f26_arg1, f26_arg2)
    function Func_rev(f27_arg0, f27_arg1, f27_arg2)
        return not f26_arg1(f27_arg0, f27_arg1, f27_arg2)
    end

    return Func_rev
end

function EZOP_SetAct_ActBranch(f28_arg0, f28_arg1, f28_arg2, f28_arg3, f28_arg4)
    local f28_local0 = EZOP_ReverseFunction_OpEndChk(f28_arg0, f28_arg1, f28_arg2)
    return { EZOP_OPERATION.WAIT, 0.2, {}, { { f28_arg3, f28_arg1, f28_arg2 }, { f28_arg4, f28_local0, f28_arg2 }, { nil } }, true }
end

function EZOP_SetAct_CoverWait(f29_arg0, f29_arg1, f29_arg2, f29_arg3, f29_arg4, f29_arg5, f29_arg6)
    return { EZOP_OPERATION.WAIT, f29_arg1, {}, { { f29_arg6, EZOP_OpEndChk_PointCheck_Cover, { POINT_AIDestPoint_Reserve, f29_arg3, f29_arg4, f29_arg5 } }, { "next" } }, true }
end

function EZOP_SetAct_SearchCoverPoint(f30_arg0, f30_arg1, f30_arg2, f30_arg3, f30_arg4, f30_arg5, f30_arg6, f30_arg7)
    if f30_arg6 == nil then
        f30_arg6 = "next"
    end
    local f30_local0 = nil
    if f30_arg7 == true then
        f30_local0 = f30_arg6
    end
    return { EZOP_OPERATION.SEARCH_COVER_POINT, f30_arg1, { f30_arg5, f30_arg1, f30_arg2, f30_arg3, f30_arg4 }, { { f30_arg6, EZOP_OpEndChk_SearchCoverPoint, { f30_arg2, f30_arg3, f30_arg4 } }, { nil, EZOP_OpEndChk_SearchCoverPoint_PathCheckForceEnd, { f30_arg2, f30_arg3, f30_arg4 } }, { f30_local0 } }, false }
end

function EZOP_SetAct_SearchMovePointAsync(f31_arg0, f31_arg1, f31_arg2, f31_arg3, f31_arg4, f31_arg5, f31_arg6, f31_arg7)
    if f31_arg6 == nil then
        f31_arg6 = "next"
    end
    local f31_local0 = nil
    if f31_arg7 == true then
        f31_local0 = f31_arg6
    end
    return { EZOP_OPERATION.SEARCH_MOVE_POINT, f31_arg1, { f31_arg5, f31_arg1, f31_arg2, f31_arg3, f31_arg4 }, { { f31_arg6, EZOP_OpEndChk_SearchMovePoint, { f31_arg2, f31_arg3, f31_arg4 } }, { f31_local0 } }, false }
end

function EZOP_SetAct_SearchShootAssetPoint(f32_arg0, f32_arg1, f32_arg2, f32_arg3, f32_arg4, f32_arg5, f32_arg6, f32_arg7)
    if f32_arg6 == nil then
        f32_arg6 = "next"
    end
    local f32_local0 = nil
    if f32_arg7 == true then
        f32_local0 = f32_arg6
    end
    return { EZOP_OPERATION.SEARCH_SHOOTASSET_POINT, f32_arg1, { f32_arg5, f32_arg1, f32_arg2, f32_arg3, f32_arg4 }, { { f32_arg6, EZOP_OpEndChk_SearchShootAssetPoint, { f32_arg2, f32_arg3, f32_arg4 } }, { nil, EZOP_OpEndChk_SearchShootAssetPoint_PathCheckForceEnd, { f32_arg2, f32_arg3, f32_arg4 } }, { f32_local0 } }, false }
end

function EZOP_SetAct_SnipeWait(f33_arg0, f33_arg1, f33_arg2, f33_arg3, f33_arg4, f33_arg5, f33_arg6)
    return { EZOP_OPERATION.WAIT, f33_arg1, {}, { { f33_arg6, EZOP_OpEndChk_PointCheck_Snipe, { POINT_AIDestPoint_Reserve, f33_arg3, f33_arg4, f33_arg5 } }, { "next" } }, true }
end

function EZOP_SetAct_WaitSpecialEffect(f34_arg0, f34_arg1, f34_arg2, f34_arg3, f34_arg4, f34_arg5)
    if f34_arg4 == nil then
        f34_arg4 = "next"
    end
    local f34_local0 = nil
    if f34_arg5 == true then
        f34_local0 = f34_arg4
    end
    return { EZOP_OPERATION.WAIT, f34_arg1, {}, { { f34_arg4, EZOP_OpEndChk_HasSpecialEffect, { f34_arg2, f34_arg3 } }, { f34_local0 } }, true }
end

function EZOP_SetAct_WaitForLanding(f35_arg0, f35_arg1, f35_arg2, f35_arg3, f35_arg4)
    if f35_arg3 == nil then
        f35_arg3 = "next"
    end
    if f35_arg2 == nil then
        f35_arg2 = true
    end
    local f35_local0 = nil
    if f35_arg4 == true then
        f35_local0 = f35_arg3
    end
    return { EZOP_OPERATION.WAIT, f35_arg1, {}, { { f35_arg3, EZOP_OpEndChk_IsLanding, { f35_arg2 } }, { f35_local0 } }, true }
end

function EZOP_SetAct_WaitForChkHeight(f36_arg0, f36_arg1, f36_arg2, f36_arg3, f36_arg4, f36_arg5, f36_arg6)
    if f36_arg5 == nil then
        f36_arg5 = "next"
    end
    if f36_arg4 == nil then
        f36_arg4 = false
    end
    local f36_local0 = nil
    if f36_arg6 == true then
        f36_local0 = f36_arg5
    end
    return { EZOP_OPERATION.WAIT, f36_arg1, {}, { { f36_arg5, EZOP_OpEndChk_ChkTargetHeight, { f36_arg2, f36_arg3, f36_arg4 } }, { f36_local0 } }, true }
end

function EZOP_SetAct_WaitForFuncCondition(f37_arg0, f37_arg1, f37_arg2, f37_arg3, f37_arg4, f37_arg5, f37_arg6)
    if f37_arg5 == nil then
        f37_arg5 = "next"
    end
    local f37_local0 = nil
    if f37_arg6 == true then
        f37_local0 = f37_arg5
    end
    return { EZOP_OPERATION.WAIT, f37_arg1, {}, { { f37_arg5, f37_arg3, f37_arg4 }, { f37_local0 } }, true }
end

function EZOP_SetAct_CoverPointSearchWait(f38_arg0, f38_arg1, f38_arg2, f38_arg3)
    if f38_arg3 == nil then
        f38_arg3 = "next"
    end
    return { EZOP_OPERATION.WAIT, f38_arg1, {}, { { f38_arg3 } }, true }
end

function EZOP_SetAct_AbsorptionTargetPoint(f39_arg0, f39_arg1, f39_arg2, f39_arg3, f39_arg4, f39_arg5, f39_arg6, f39_arg7)
    if f39_arg6 == nil then
        f39_arg6 = "next"
    end
    local f39_local0 = nil
    if f39_arg7 == true then
        f39_local0 = f39_arg6
    end
    return { EZOP_OPERATION.ABSORPTION_TARGETPOINT, f39_arg1, { f39_arg5, f39_arg1, f39_arg2, f39_arg3, f39_arg4 }, { { f39_arg6, EZOP_OpEndChk_CloserThan, { f39_arg2, f39_arg4, EZOP_ARRIVE_JUDGE_TYPE._Orrigin } }, { f39_local0 } }, true }
end

function EZOP_SetAct_TankTurn(f40_arg0, f40_arg1, f40_arg2, f40_arg3, f40_arg4, f40_arg5, f40_arg6)
    if f40_arg6 == nil then
        f40_arg6 = "next"
    end
    local f40_local0 = 0
    local f40_local1 = EZOP_ARRIVE_JUDGE_TYPE._CapsuleToCapsule
    local f40_local2 = 0
    local f40_local3 = 0
    local f40_local4 = 0
    local f40_local5 = nil
    return { EZOP_OPERATION.TANKTURN, f40_arg1, { f40_arg5, f40_arg1, f40_arg2, f40_arg4, f40_arg3 }, { { f40_arg6, EZOP_OpEndChk_IsInsideAngle, { f40_arg2, f40_arg4, AI_DIR_TYPE_F } }, { f40_arg6 } }, true }
end

function EZOP_SetAct_KeepDistance_Navi(f41_arg0, f41_arg1, f41_arg2, f41_arg3, f41_arg4, f41_arg5, f41_arg6, f41_arg7,
                                       f41_arg8, f41_arg9, f41_arg10, f41_arg11, f41_arg12, f41_arg13)
    if f41_arg12 == nil then
        f41_arg12 = "next"
    end
    local f41_local0 = nil
    if f41_arg13 == true then
        f41_local0 = f41_arg12
    end
    return { EZOP_OPERATION.MOVE_KEEPDIST_NAVI, f41_arg1, { f41_arg11, f41_arg1, f41_arg2, f41_arg3, f41_arg4, f41_arg5, f41_arg6, f41_arg7, f41_arg8, f41_arg9, f41_arg10 }, { { f41_arg12, EZOP_OpEndChk_CloserThan, { TARGET_LAST_MOVE_TARGET, f41_arg5, f41_arg6 } }, { f41_local0 } }, false }
end

function EZOP_SetAct_KeepDistance_Navi2(f42_arg0, f42_arg1, f42_arg2, f42_arg3, f42_arg4, f42_arg5, f42_arg6, f42_arg7,
                                        f42_arg8, f42_arg9, f42_arg10, f42_arg11, f42_arg12, f42_arg13)
    if f42_arg12 == nil then
        f42_arg12 = "next"
    end
    local f42_local0 = nil
    if f42_arg13 == true then
        f42_local0 = f42_arg12
    end
    return { EZOP_OPERATION.MOVE_KEEPDIST_NAVI2, f42_arg1, { f42_arg11, f42_arg1, f42_arg2, f42_arg3, f42_arg4, f42_arg5, f42_arg6, f42_arg7, f42_arg8, f42_arg9, f42_arg10 }, { { f42_arg12, EZOP_OpEndChk_CloserThan, { TARGET_LAST_MOVE_TARGET, f42_arg5, f42_arg6 } }, { f42_local0 } }, false }
end

function EZOP_SetAct_KeepDistance_Navi3(f43_arg0, f43_arg1, f43_arg2, f43_arg3, f43_arg4, f43_arg5, f43_arg6, f43_arg7,
                                        f43_arg8, f43_arg9, f43_arg10, f43_arg11, f43_arg12, f43_arg13)
    if f43_arg12 == nil then
        f43_arg12 = "next"
    end
    local f43_local0 = nil
    if f43_arg13 == true then
        f43_local0 = f43_arg12
    end
    return { EZOP_OPERATION.MOVE_KEEPDIST_NAVI3, f43_arg1, { f43_arg11, f43_arg1, f43_arg2, f43_arg3, f43_arg4, f43_arg5, f43_arg6, f43_arg7, f43_arg8, f43_arg9, f43_arg10 }, { { f43_arg12, EZOP_OpEndChk_CloserThan, { TARGET_LAST_MOVE_TARGET, f43_arg5, f43_arg6 } }, { f43_local0 } }, false }
end

function EZOP_SetAct_KeepDistance_Navi4(f44_arg0, f44_arg1, f44_arg2, f44_arg3, f44_arg4, f44_arg5, f44_arg6, f44_arg7,
                                        f44_arg8, f44_arg9, f44_arg10, f44_arg11, f44_arg12, f44_arg13, f44_arg14,
                                        f44_arg15)
    if f44_arg14 == nil then
        f44_arg14 = "next"
    end
    local f44_local0 = nil
    if f44_arg15 == true then
        f44_local0 = f44_arg14
    end
    return { EZOP_OPERATION.MOVE_KEEPDIST_NAVI4, f44_arg1, { f44_arg13, f44_arg1, f44_arg2, f44_arg3, f44_arg4, f44_arg5, f44_arg6, f44_arg7, f44_arg8, f44_arg9, f44_arg10, f44_arg11, f44_arg12 }, { { f44_arg14, EZOP_OpEndChk_CloserThan, { TARGET_LAST_MOVE_TARGET, f44_arg5, f44_arg6 } }, { f44_local0 } }, false }
end

function EZOP_SetAct_KeepDistance_Navi5(f45_arg0, f45_arg1, f45_arg2, f45_arg3, f45_arg4, f45_arg5, f45_arg6, f45_arg7,
                                        f45_arg8, f45_arg9, f45_arg10, f45_arg11, f45_arg12, f45_arg13, f45_arg14,
                                        f45_arg15, f45_arg16, f45_arg17)
    if f45_arg16 == nil then
        f45_arg16 = "next"
    end
    local f45_local0 = nil
    if f45_arg17 == true then
        f45_local0 = f45_arg16
    end
    return { EZOP_OPERATION.MOVE_KEEPDIST_NAVI5, f45_arg1, { f45_arg13, f45_arg1, f45_arg2, f45_arg3, f45_arg4, f45_arg5, f45_arg6, f45_arg7, f45_arg8, f45_arg9, f45_arg10, f45_arg11, f45_arg12 }, { { f45_arg16, EZOP_OpEndChk_CloserThan, { TARGET_LAST_MOVE_TARGET, f45_arg5, f45_arg6 } }, { f45_local0 } }, false, { f45_arg14, f45_arg15 } }
end

function EZOP_SetAct_KeepDistance_Navi5_SandWorm(f46_arg0, f46_arg1, f46_arg2, f46_arg3, f46_arg4, f46_arg5, f46_arg6,
                                                 f46_arg7, f46_arg8, f46_arg9, f46_arg10, f46_arg11, f46_arg12, f46_arg13,
                                                 f46_arg14, f46_arg15, f46_arg16, f46_arg17)
    if f46_arg16 == nil then
        f46_arg16 = "next"
    end
    local f46_local0 = nil
    if f46_arg17 == true then
        f46_local0 = f46_arg16
    end
    return { EZOP_OPERATION.MOVE_KEEPDIST_NAVI5_SANDWORM, f46_arg1, { f46_arg13, f46_arg1, f46_arg2, f46_arg3, f46_arg4, f46_arg5, f46_arg6, f46_arg7, f46_arg8, f46_arg9, f46_arg10, f46_arg11, f46_arg12 }, { { f46_arg16, EZOP_OpEndChk_CloserThan, { TARGET_LAST_MOVE_TARGET, f46_arg5, f46_arg6 } }, { f46_local0 } }, false, { f46_arg14, f46_arg15 } }
end

function EZOP_SetAct_MoveRoutePoint(f47_arg0, f47_arg1, f47_arg2, f47_arg3, f47_arg4, f47_arg5, f47_arg6, f47_arg7,
                                    f47_arg8)
    if f47_arg7 == nil then
        f47_arg7 = "next"
    end
    local f47_local0 = nil
    if f47_arg8 == true then
        f47_local0 = f47_arg7
    end
    return { EZOP_OPERATION.MOVE_ROUTE_POINT, f47_arg1, { f47_arg6, f47_arg1, POINT_MOVE_POINT, f47_arg3, f47_arg4, f47_arg5 }, { { f47_arg7, EZOP_OpEndChk_CloserThan_RoutePoint, { POINT_MOVE_POINT, f47_arg5, EZOP_ARRIVE_JUDGE_TYPE._Orrigin } }, { f47_local0 } }, false }
end

function EZOP_SetAct_MoveToCoverPoint(f48_arg0, f48_arg1, f48_arg2, f48_arg3, f48_arg4, f48_arg5, f48_arg6, f48_arg7,
                                      f48_arg8, f48_arg9, f48_arg10, f48_arg11)
    if f48_arg10 == nil then
        f48_arg10 = "next"
    end
    local f48_local0 = nil
    if f48_arg11 == true then
        f48_local0 = f48_arg10
    end
    return { EZOP_OPERATION.MOVE_COVER_POINT, f48_arg1, { f48_arg8, f48_arg1, POINT_AIDestPoint_Reserve, f48_arg5, f48_arg6, f48_arg7, EZOP_ARRIVE_JUDGE_TYPE._Orrigin, f48_arg2, f48_arg3, f48_arg4, f48_arg9 }, { { f48_arg10, EZOP_OpEndChk_CloserThan, { POINT_AIDestPoint_Reserve, f48_arg7, EZOP_ARRIVE_JUDGE_TYPE._Orrigin } }, { nil, EZOP_OpEndChk_IsNotFinishTimer, { f48_arg3 } }, { f48_local0 } }, false }
end

function EZOP_SetAct_MoveToCoverPointAsync(f49_arg0, f49_arg1, f49_arg2, f49_arg3, f49_arg4, f49_arg5, f49_arg6, f49_arg7,
                                           f49_arg8, f49_arg9, f49_arg10, f49_arg11)
    if f49_arg10 == nil then
        f49_arg10 = "next"
    end
    local f49_local0 = nil
    if f49_arg11 == true then
        f49_local0 = f49_arg10
    end
    return { EZOP_OPERATION.MOVE_COVER_POINT_ASYNC, f49_arg1, { f49_arg8, f49_arg1, POINT_AIDestPoint_Reserve, f49_arg5, f49_arg6, f49_arg7, EZOP_ARRIVE_JUDGE_TYPE._Orrigin, f49_arg2, f49_arg3, f49_arg4, f49_arg9 }, { { f49_arg10, EZOP_OpEndChk_CloserThan, { POINT_AIDestPoint_Reserve, f49_arg7, EZOP_ARRIVE_JUDGE_TYPE._Orrigin } }, { nil, EZOP_OpEndChk_IsNotFinishTimer, { f49_arg3 } }, { f49_local0 } }, false }
end

function EZOP_SetAct_MoveToMovePointAsync(f50_arg0, f50_arg1, f50_arg2, f50_arg3, f50_arg4, f50_arg5, f50_arg6, f50_arg7,
                                          f50_arg8, f50_arg9, f50_arg10, f50_arg11)
    if f50_arg10 == nil then
        f50_arg10 = "next"
    end
    local f50_local0 = nil
    if f50_arg11 == true then
        f50_local0 = f50_arg10
    end
    return { EZOP_OPERATION.MOVE_MOVE_POINT_ASYNC, f50_arg1, { f50_arg8, f50_arg1, POINT_AIDestPoint_AiKeepRumtimePoint, f50_arg5, f50_arg6, f50_arg7, EZOP_ARRIVE_JUDGE_TYPE._Orrigin, f50_arg2, f50_arg3, f50_arg4, f50_arg9 }, { { f50_arg10, EZOP_OpEndChk_CloserThan, { POINT_AIDestPoint_AiKeepRumtimePoint, f50_arg7, EZOP_ARRIVE_JUDGE_TYPE._Orrigin } }, { nil, EZOP_OpEndChk_IsNotFinishTimer, { f50_arg3 } }, { f50_local0 } }, false }
end

function EZOP_SetAct_UroUroMove(f51_arg0, f51_arg1, f51_arg2, f51_arg3, f51_arg4, f51_arg5, f51_arg6, f51_arg7, f51_arg8,
                                f51_arg9)
    if f51_arg8 == nil then
        f51_arg8 = "next"
    end
    local f51_local0 = nil
    if f51_arg9 == true then
        f51_local0 = f51_arg8
    end
    return { EZOP_OPERATION.UROURO_MOVE, f51_arg1, { f51_arg7, f51_arg1, f51_arg2, f51_arg3, f51_arg4, f51_arg5, f51_arg6 }, { { f51_arg8, EZOP_OpEndChk_CloserThan, { TARGET_LAST_MOVE_TARGET, 2.5, f51_arg5 } }, { f51_local0 } }, false }
end

function EZOP_SetAct_MoveToShootAssetPointAsync(f52_arg0, f52_arg1, f52_arg2, f52_arg3, f52_arg4, f52_arg5, f52_arg6,
                                                f52_arg7, f52_arg8, f52_arg9, f52_arg10, f52_arg11)
    if f52_arg10 == nil then
        f52_arg10 = "next"
    end
    local f52_local0 = nil
    if f52_arg11 == true then
        f52_local0 = f52_arg10
    end
    return { EZOP_OPERATION.MOVE_SHOOTASSET_POINT_ASYNC, f52_arg1, { f52_arg8, f52_arg1, POINT_AIDestPoint_Reserve, f52_arg5, f52_arg6, f52_arg7, EZOP_ARRIVE_JUDGE_TYPE._Orrigin, f52_arg2, f52_arg3, f52_arg4, f52_arg9 }, { { f52_arg10, EZOP_OpEndChk_CloserThan, { POINT_AIDestPoint_Reserve, f52_arg7, EZOP_ARRIVE_JUDGE_TYPE._Orrigin } }, { nil, EZOP_OpEndChk_IsNotFinishTimer, { f52_arg3 } }, { f52_local0 } }, false }
end

function EZOP_SetAct_QuickBoost2(f53_arg0, f53_arg1, f53_arg2, f53_arg3, f53_arg4, f53_arg5, f53_arg6, f53_arg7)

end

function EZOP_SetAct_Jump2(f54_arg0, f54_arg1, f54_arg2, f54_arg3, f54_arg4, f54_arg5, f54_arg6, f54_arg7)
    if f54_arg7 == nil then
        f54_arg7 = "next"
    end
    return { EZOP_OPERATION.JUMP, f54_arg1, { f54_arg6, f54_arg1, f54_arg2, EZOP_MOVETYPE._JUMP2, f54_arg3 }, { { f54_arg7 } }, false }
end

function EZOP_SetAct_Jump3(f55_arg0, f55_arg1, f55_arg2, f55_arg3, f55_arg4, f55_arg5, f55_arg6, f55_arg7)
    if f55_arg7 == nil then
        f55_arg7 = "next"
    end
    return { EZOP_OPERATION.JUMP3, f55_arg1, { f55_arg6, f55_arg1, f55_arg2, EZOP_MOVETYPE._JUMP2, f55_arg3 }, { { f55_arg7 } }, false }
end

function EZOP_SetAct_ApproachTarget_FloatingFall(f56_arg0, f56_arg1, f56_arg2, f56_arg3, f56_arg4, f56_arg5, f56_arg6,
                                                 f56_arg7, f56_arg8, f56_arg9)
    if f56_arg8 == nil then
        f56_arg8 = "next"
    end
    local f56_local0 = nil
    if f56_arg9 == true then
        f56_local0 = f56_arg8
    end
    return { EZOP_OPERATION.FLOATING_FALL, f56_arg1, { f56_arg7, f56_arg1, f56_arg2, EZOP_MOVETYPE._FLOATING_FALL, f56_arg4, f56_arg5, f56_arg6, f56_arg3 }, { { f56_arg8, EZOP_OpEndChk_CloserThan, { f56_arg2, f56_arg4, f56_arg5 } }, { f56_local0 } }, false }
end

function EZOP_SetAct_ApproachTarget_Forward(f57_arg0, f57_arg1, f57_arg2, f57_arg3, f57_arg4, f57_arg5, f57_arg6,
                                            f57_arg7, f57_arg8, f57_arg9, f57_arg10, f57_arg11, f57_arg12)
    if f57_arg11 == nil then
        f57_arg11 = "next"
    end
    local f57_local0 = nil
    if f57_arg12 == true then
        f57_local0 = f57_arg11
    end
    return { EZOP_OPERATION.MOVE_APPROACH_FORWARD, f57_arg1, { f57_arg10, f57_arg1, f57_arg2, f57_arg3, f57_arg4, f57_arg5, f57_arg6, f57_arg7, f57_arg8, f57_arg9 }, { { f57_arg11, EZOP_OpEndChk_CloserThan, { f57_arg2, f57_arg4, f57_arg5 } }, { f57_local0 } }, false }
end

function EZOP_SetAct_LeaveFromTarget_Forward(f58_arg0, f58_arg1, f58_arg2, f58_arg3, f58_arg4, f58_arg5, f58_arg6,
                                             f58_arg7, f58_arg8, f58_arg9, f58_arg10, f58_arg11, f58_arg12)
    if f58_arg11 == nil then
        f58_arg11 = "next"
    end
    local f58_local0 = nil
    if f58_arg12 == true then
        f58_local0 = f58_arg11
    end
    return { EZOP_OPERATION.MOVE_LEAVE_FORWARD, f58_arg1, { f58_arg10, f58_arg1, f58_arg2, f58_arg3, f58_arg4, f58_arg5, f58_arg6, f58_arg7, f58_arg8, f58_arg9 }, { { f58_arg11, EZOP_OpEndChk_FartherThanXZ, { f58_arg2, f58_arg4, f58_arg5 } }, { f58_local0 } }, false }
end

function EZOP_SetAct_Attack(f59_arg0, f59_arg1, f59_arg2, f59_arg3, f59_arg4, f59_arg5, f59_arg6, f59_arg7, f59_arg8)
    if f59_arg8 == nil then
        f59_arg8 = "next"
    end
    local f59_local0 = f59_arg7[2]
    local f59_local1 = f59_arg7[3]
    return { EZOP_OPERATION.ATTACK_1, f59_arg1, { f59_arg1, f59_arg2, f59_arg3, f59_arg4, f59_arg5 }, { { nil, EZOP_OpEndChk_IsNotFrontTarget_CancelFlagInterrupt, { f59_arg2, AI_DIR_TYPE_F, f59_local0, f59_local1 } }, { f59_arg8 } }, true }
end

function EZOP_SetAct_Attack2(f60_arg0, f60_arg1, f60_arg2, f60_arg3, f60_arg4, f60_arg5, f60_arg6, f60_arg7, f60_arg8,
                             f60_arg9, f60_arg10, f60_arg11)
    if f60_arg11 == nil then
        f60_arg11 = "next"
    end
    return { EZOP_OPERATION.ATTACK_2, f60_arg1, { f60_arg1, f60_arg2, f60_arg3, f60_arg4, f60_arg5, f60_arg6, f60_arg7, f60_arg8, f60_arg9, OP_COMBO_TYPE_FALSE }, { { nil, EZOP_OpEndChk_IsNotFrontTarget_CancelFlagInterrupt, { f60_arg2, AI_DIR_TYPE_F, f60_arg9, f60_arg10 } }, { f60_arg11 } }, true }
end

function EZOP_SetAct_ComboAttack2(f61_arg0, f61_arg1, f61_arg2, f61_arg3, f61_arg4, f61_arg5, f61_arg6, f61_arg7,
                                  f61_arg8, f61_arg9, f61_arg10, f61_arg11)
    if f61_arg11 == nil then
        f61_arg11 = "next"
    end
    return { EZOP_OPERATION.ATTACK_2, f61_arg1, { f61_arg1, f61_arg2, f61_arg3, f61_arg4, f61_arg5, f61_arg6, f61_arg7, f61_arg8, f61_arg9, OP_COMBO_TYPE_TRUE }, { { nil, EZOP_OpEndChk_IsNotFrontTarget_CancelFlagInterrupt, { f61_arg2, AI_DIR_TYPE_F, f61_arg9, f61_arg10 } }, { f61_arg11 } }, true }
end

function EZOP_SetAct_MultiAttack2(f62_arg0, f62_arg1, f62_arg2, f62_arg3, f62_arg4, f62_arg5, f62_arg6, f62_arg7)
    if f62_arg6 == nil then
        f62_arg6 = "next"
    end
    local f62_local0 = f62_arg6
    if f62_arg7 == false then
        f62_local0 = nil
    end
    return { EZOP_OPERATION.MULTI_ATTACK_2, f62_arg1, { f62_arg3, f62_arg1, f62_arg2 }, { { f62_local0 } }, false }
end

function EZOP_SetAct_MultiAttack3(f63_arg0, f63_arg1, f63_arg2, f63_arg3, f63_arg4, f63_arg5, f63_arg6, f63_arg7)
    if f63_arg6 == nil then
        f63_arg6 = "next"
    end
    local f63_local0 = f63_arg6
    if f63_arg7 == false then
        f63_local0 = nil
    end
    return { EZOP_OPERATION.MULTI_ATTACK_3, f63_arg1, { f63_arg3, f63_arg1, f63_arg2 }, { { f63_local0 } }, false }
end

function EZOP_SetAct_CoverAttack(f64_arg0, f64_arg1, f64_arg2, f64_arg3, f64_arg4, f64_arg5, f64_arg6, f64_arg7, f64_arg8,
                                 f64_arg9, f64_arg10)
    if f64_arg9 == nil then
        f64_arg9 = "next"
    end
    local f64_local0 = f64_arg9
    if f64_arg10 == false then
        f64_local0 = nil
    end
    return { EZOP_OPERATION.COVER_ATTACK, f64_arg1, { f64_arg3, f64_arg1, f64_arg2 }, { { nil, EZOP_OpEndChk_PointCheck_Cover, { POINT_AIDestPoint_Reserve, f64_arg4, f64_arg5, f64_arg6 } }, { f64_local0 } }, false }
end

function EZOP_SetAct_CoverAttack2(f65_arg0, f65_arg1, f65_arg2, f65_arg3, f65_arg4, f65_arg5, f65_arg6, f65_arg7,
                                  f65_arg8, f65_arg9, f65_arg10)
    if f65_arg9 == nil then
        f65_arg9 = "next"
    end
    local f65_local0 = f65_arg9
    if f65_arg10 == false then
        f65_local0 = nil
    end
    return { EZOP_OPERATION.COVER_ATTACK_2, f65_arg1, { f65_arg3, f65_arg1, f65_arg2 }, { { f65_arg9, EZOP_OpEndChk_HasTAECanselFrags_Success, { -1, { AI_ACT_CANCEL_FLAG_RightHandAnim, AI_ACT_CANCEL_FLAG_LeftHandAnim, AI_ACT_CANCEL_FLAG_MoveAnim, AI_ACT_CANCEL_FLAG_BoostAnim, AI_ACT_CANCEL_FLAG_Quickboostanim }, f65_arg7, f65_arg8 } }, { nil, EZOP_OpEndChk_HasTAECanselFrags_Failure, { -1, { AI_ACT_CANCEL_FLAG_RightHandAnim, AI_ACT_CANCEL_FLAG_LeftHandAnim, AI_ACT_CANCEL_FLAG_MoveAnim, AI_ACT_CANCEL_FLAG_BoostAnim, AI_ACT_CANCEL_FLAG_Quickboostanim }, f65_arg7, f65_arg8 } }, { nil, EZOP_OpEndChk_PointCheck_Cover, { POINT_AIDestPoint_Reserve, f65_arg4, f65_arg5, f65_arg6 } }, { f65_local0 } }, false }
end

function EZOP_SetAct_CallActionExec(f66_arg0, f66_arg1, f66_arg2, f66_arg3, f66_arg4, f66_arg5, f66_arg6, f66_arg7,
                                    f66_arg8)
    if f66_arg7 == nil then
        f66_arg7 = "next"
    end
    return { EZOP_OPERATION.ACTION_1, f66_arg1, { f66_arg1, f66_arg2, f66_arg3, f66_arg4, f66_arg8 }, { { f66_arg7, EZOP_OpEndChk_HasTAECanselFrags_Success, { -1, { AI_ACT_CANCEL_FLAG_RightHandAnim, AI_ACT_CANCEL_FLAG_LeftHandAnim, AI_ACT_CANCEL_FLAG_MoveAnim, AI_ACT_CANCEL_FLAG_BoostAnim, AI_ACT_CANCEL_FLAG_Quickboostanim }, f66_arg5, f66_arg6 } }, { nil, EZOP_OpEndChk_HasTAECanselFrags_Failure, { -1, { AI_ACT_CANCEL_FLAG_RightHandAnim, AI_ACT_CANCEL_FLAG_LeftHandAnim, AI_ACT_CANCEL_FLAG_MoveAnim, AI_ACT_CANCEL_FLAG_BoostAnim, AI_ACT_CANCEL_FLAG_Quickboostanim }, f66_arg5, f66_arg6 } }, { f66_arg7 } }, true, { nil, nil },
        AI_ORDER_TYPE_ONESHOT }
end

function EZOP_SetAct_SwitchMode(f67_arg0, f67_arg1, f67_arg2, f67_arg3, f67_arg4)
    if f67_arg4 == nil then
        f67_arg4 = "next"
    end
    local f67_local0 = {}
    if f67_arg2 == AI_CALLACT_EXEC_EnemyModeChangeA then
        f67_local0[1] = 99991000
    elseif f67_arg2 == AI_CALLACT_EXEC_EnemyModeChangeB then
        f67_local0[1] = 99991001
    elseif f67_arg2 == AI_CALLACT_EXEC_EnemyModeChangeC then
        f67_local0[1] = 99991002
    elseif f67_arg2 == AI_CALLACT_EXEC_EnemyModeChangeD then
        f67_local0[1] = 99991003
    elseif f67_arg2 == AI_CALLACT_EXEC_EnemyModeChangeE then
        f67_local0[1] = 99991004
    else
        f67_local0[1] = -1
    end
    return { EZOP_OPERATION.SWITCH_MODE, f67_arg1, { f67_arg1, TARGET_NONE, f67_arg2, Param, "Beat" }, { { f67_arg4, EZOP_OpEndChk_SwitchMode, { TARGET_SELF, f67_local0, f67_arg3 } }, { f67_arg4 } }, true }
end

function EZOP_SetAct_AttackCharge(f68_arg0, f68_arg1, f68_arg2, f68_arg3, f68_arg4, f68_arg5, f68_arg6, f68_arg7,
                                  f68_arg8)
    if f68_arg8 == nil then
        f68_arg8 = "next"
    end
    f68_arg0:SetTimer(f68_arg4, f68_arg5)
    return { EZOP_OPERATION.CHARGE_ATTACK, f68_arg1, { f68_arg2, f68_arg3, f68_arg1, 0 }, { { f68_arg8, EZOP_OpEndChk_IsFinishCharge, { f68_arg4, f68_arg2, f68_arg6, f68_arg7 } } }, true }
end

function EZOP_SetAct_RootMove(f69_arg0, f69_arg1, f69_arg2, f69_arg3, f69_arg4, f69_arg5, f69_arg6)
    if TransAct == nil then
        TransAct = "next"
    end
    return { EZOP_OPERATION.ROOT_MOVE, f69_arg1, { AttackArray, f69_arg1, f69_arg2, f69_arg3, f69_arg4, f69_arg5, f69_arg6 }, { nil }, true }
end

PRINT_TEXT(LogHeader_Plan .. "SetAct: SetFunc OK")

EZOPArray.new = function()
    return {
        Add = function(f71_arg0, f71_arg1)
            local f71_local0 = table.getn(f71_arg0)
            f71_arg0[f71_local0 + 1] = f71_arg1
            return f71_local0 + 1
        end
    }
end

PRINT_TEXT("-----" .. LogHeader_Plan .. "SetAct Complete-----")
