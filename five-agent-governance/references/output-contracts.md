# Output Contracts

Use these contracts to keep cross-thread governance stable.

## ThreadBootStatus

- `thread_type`
- `startup_protocol_detected`
- `agents_requested`
- `agents_started`
- `agents_failed`
- `boot_status`
- `can_enter_governance`

## ThreadGovernanceState

- `stage`
- `checkpoint`
- `mode`
- `last_verdict`
- `discovery_enabled`

## AgentPosition

- `agent_name`
- `role`
- `position`
- `risks`
- `recommended_action`

## WegenerInterrogationRecord

- `round`
- `target_agent`
- `challenge_points`
- `assessment`

## WegenerSelfReviewRecord

- `round`
- `focus`
- `findings`

## PopperChallengeRecord

- `round`
- `focus`
- `assessment`

## CoreChallengerRecord

- `scope_acceptance`
- `disproof_questions`
- `weakest_evidence`
- `post_repair_challenge`
- `verdict`

## AuditSpecialistRecord

- `changed_files`
- `dirty_ownership`
- `staged_status`
- `commands_or_tests`
- `artifacts_or_traces`
- `cleanup_status`
- `gate_integrity_assessment`

## GoalRepairRecord

- `goal_authorized`
- `allowed_files`
- `forbidden_files`
- `repair_rounds`
- `validation_commands`
- `stop_condition`
- `out_of_scope_attempts`

## ClosedLoopGovernanceRecord

- `loop_mode`
- `initial_work_summary`
- `five_agent_rounds`
- `core_challenger_records`
- `audit_specialist_records`
- `goal_repair_records`
- `remaining_issue_count`
- `final_gate_verdict`

## GovernanceVerdict

- `verdict`
- `reason`
- `required_actions`
- `retry_scope`
- `next_allowed_stage`
