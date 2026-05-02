# Closed Loop Governance

Use this reference when repeated correction and repeated verification are part
of the assignment.

Closed Loop Council is an upgrade to the normal five-agent workflow. It keeps
the five agents as the decision council, then adds Core Challenger scope
acceptance, optional bounded `/goal` repair, and Audit Specialist evidence
review before any controller-facing completion claim.

## Applicability

Use the loop for:

- sample, KB, prompt, oracle, `smoke_extracts`, `forbidden_drift`, and
  human-review guidance closure.
- runtime, validator, provider, UI, exporter, schema, prompt packaging, and
  source-of-truth boundary changes.
- test and QA gates, including four-group trace, 16-case, cross-drift smoke,
  StoryFactFrame binding, 403-case readiness, CDP/UI trace, release-shell, and
  packaging-adjacent checks.
- docs-only contracts or coordination rules that change gate order, reporting,
  routing, dirty ownership, or release claims.

Do not use it for trivial one-shot work or for broad, ambiguous repair where no
bounded scope has been authorized.

## Loop Order

1. Work inside the authorized scope.
2. Run the required validation commands or tests.
3. Run Maxwell, Dirac, Parfit, Wegener, and Popper.
4. Core Challenger decides whether remaining issues are truly narrowed.
5. Audit Specialist checks evidence, ownership, artifacts, and gate integrity.
6. If issues remain inside scope and `/goal` is authorized, use `/goal` to
   repair.
7. Re-run validation.
8. Re-run five-agent review, Core Challenger, and Audit Specialist.
9. Repeat until all issues close or a stop condition triggers.

## Core Challenger Duties

Before `/goal`, Core Challenger must confirm:

- the remaining issue is real.
- the issue is narrowed to authorized files, fields, commands, and stop
  conditions.
- no broader product, release, or human approval decision is being delegated to
  `/goal`.

After `/goal`, Core Challenger must challenge:

- whether the fix only removed keywords or symptoms.
- whether the result still fails semantically or behaviorally.
- whether new risks were introduced.
- whether a later handoff thread would accept the evidence.

## Audit Specialist Duties

Audit Specialist is read-only by default.

It checks:

- before/after Git state.
- exact changed files and dirty ownership.
- staged vs unstaged status.
- test commands and key outputs.
- artifacts, traces, screenshots, layout bounds, or logs.
- cleanup status for desktop shell, CDP, UI trace, release shell, and packaging
  adjacent work.
- whether assertions, validators, warnings, provider gates, or release gates
  were weakened.

Audit Specialist must not edit, delete, stage, commit, push, package, or run
long tests unless the controller explicitly authorizes that action.

## `/goal` Entry Rules

Enter `/goal` only when:

- the controller dispatch explicitly authorizes `/goal`.
- Core Challenger accepts the narrowed repair scope.
- allowed files, forbidden files, validation commands, and stop conditions are
  listed.
- the repair can be validated without subjective approval by `/goal`.

Do not enter `/goal` when:

- the scope is ambiguous.
- authorization is missing.
- the fix would require forbidden files or unrelated workstreams.
- the issue is a release, product-quality, sample-approval, or human-review
  judgment.
- passing would require lowering the gate.

`/goal` is a repair executor, not a verdict authority.

## Stop Conditions

Stop and report when:

- all required validations pass and five-agent/Core/Audit review accept the
  result.
- a blocker appears.
- the loop needs an unauthorized file, command, environment, or gate.
- a destructive, packaging, 403-case, push, or commit action would be needed
  without explicit authorization.
- the environment is blocked.
- a newer user or controller instruction supersedes the task.

## Test And QA Rules

Tests must not be made green by:

- weakening assertions.
- hiding warnings or validator failures.
- counting fallback-only output as live provider success.
- skipping required cleanup.
- using browser preview, Vite, backend-only, or IPC-only evidence when release
  shell/WebView2 evidence is required.
- entering 403-case or packaging before the project gate allows it.

Every closed-loop QA report must include exact commands, key output, artifacts
or trace fields, before/after Git status, and cleanup status.

## Report Fields

Closed-loop reports should include:

- assigned scope.
- validation commands and results.
- five-agent rounds.
- Core Challenger acceptance.
- Audit Specialist evidence review.
- whether `/goal` was used.
- `/goal` rounds and stop condition.
- final remaining issue count.
- final gate verdict.
- dirty ownership.
- cleanup state when applicable.
