EZOP_OPERATION_SET = {
	[EZOP_OPERATION.CLEAR_OPERATION] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_ClearOperation },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_ClearOperation },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_ClearOperation },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_ClearOperation },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_ClearOperation },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_ClearOperation },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_ClearOperation },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_ClearOperation }
	},
	[EZOP_OPERATION.WAIT] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Wait },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.SEARCH_COVER_POINT] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_SearchCoverPoint },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.SEARCH_MOVE_POINT] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_SearchMovePoint },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.SEARCH_SHOOTASSET_POINT] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_SearchShootAssetPoint },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.ABSORPTION_TARGETPOINT] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_AbsorptionTargetPoint },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.TURN] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Wait },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack2_01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack2_02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack2_03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack2_04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.TURN_FORMAL] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Wait },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.RELATIVE_TURN] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Wait },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.TANKTURN] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Wait },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_TankTurn },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.LOOPTURN_FORMAL] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Wait },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_APPROACH] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_ApproachTarget },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_SIDEWAY] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_SidewayMove },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_LEAVE] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_LeaveFromTarget },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_LEAVE_FORWARD] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_LeaveFromTarget_Forward },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_KEEPDIST_NAVI] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_KEEPDIST_NAVI2] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi2 },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_KEEPDIST_NAVI3] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi2 },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack2_01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack2_02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack2_03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack2_04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_KEEPDIST_NAVI4] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi4 },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack2_01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack2_02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack2_03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack2_04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_KEEPDIST_NAVI5] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi4 },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack3_01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack3_02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack3_03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack3_04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_KEEPDIST_NAVI5_SANDWORM] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi4_SandWorm },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack3_01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack3_02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack3_03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack3_04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MoveKeepDistance_Navi_Air] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_KeepDistance_Navi_Air },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_BOOST_RISE] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_BoostRise },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_COMMON_FOMAL] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_CommonMove },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_FLOAT_NONAVI] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveFolatNoNavi },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_ROUTE_POINT] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveRoutePoint },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_COVER_POINT] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveToCoverPoint },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CoverCall_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_COVER_POINT_ASYNC] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveToCoverPointAsync },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CoverCall_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_SNIPE_POINT] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveToSnipePoint },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_MOVE_POINT_ASYNC] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveToMovePointAsync },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CoverCall_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MOVE_SHOOTASSET_POINT_ASYNC] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveToShootAssetPointAsync },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.QUICK_BOOST] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_QuickBoost },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.QUICK_BOOST_FORMAL] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.ASSULT_BOOST] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.JUMP] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Jump },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.JUMP3] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_Jump },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack2_01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack2_02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack2_03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack2_04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.JUMP_FORMAL] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.NPAC_HOVER] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.FLOATING_FALL] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_MoveToTarget_FloatingFall },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.ATTACK_1] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_Attack },
		[EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.ATTACK_2] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_Attack2 },
		[EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MULTI_ATTACK_1] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MULTI_ATTACK_2] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack2_01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack2_02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack2_03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack2_04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.MULTI_ATTACK_3] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack3_01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack3_02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack3_03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack3_04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.COMMON_STAND_ATTACK] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.COMMON_UPPERBODY_ATTACK] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_TrrigerOperation_SetUpActInterrupt }
	},
	[EZOP_OPERATION.COVER_ATTACK] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.COVER_ATTACK_2] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_TriggerOperation01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_TriggerOperation02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_TriggerOperation03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_TriggerOperation04 },
		[EZOP_LAYER._EXTRA01] = { 99, EZOP_OpFunc_CallActionExec_ExtraLayer },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.ACTION_1] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_CallActionExec },
		[EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.SWITCH_MODE] = {
		[EZOP_LAYER._MOVE01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._MOVETYPE] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_CallActionExec },
		[EZOP_LAYER._ATTACK02] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK03] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._ATTACK04] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.ROOT_MOVE] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_RootMove },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	},
	[EZOP_OPERATION.UROURO_MOVE] = {
		[EZOP_LAYER._MOVE01] = { 99, EZOP_OpFunc_UroUroMove },
		[EZOP_LAYER._MOVETYPE] = { 99, EZOP_OpFunc_MoveType },
		[EZOP_LAYER._ATTACK01] = { 99, EZOP_OpFunc_MovingAttack01 },
		[EZOP_LAYER._ATTACK02] = { 99, EZOP_OpFunc_MovingAttack02 },
		[EZOP_LAYER._ATTACK03] = { 99, EZOP_OpFunc_MovingAttack03 },
		[EZOP_LAYER._ATTACK04] = { 99, EZOP_OpFunc_MovingAttack04 },
		[EZOP_LAYER._EXTRA01] = { 99, LayerInvalidLocal },
		[EZOP_LAYER._INTERRUPT] = { 99, EZOP_OpFunc_Interrupt }
	}
}
