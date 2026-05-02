# Checklists

Use this file before allowing a phase to pass.

## Minimum-Clarity Check

Confirm all of the following before calling the need clear enough:

- the real problem is stated in plain language
- the target user or team is visible
- the desired outcome is explicit
- must-haves and must-not-haves are visible
- confirmed items and working assumptions are separated
- the user was given a clear confirmation or correction path

## Premature-Execution Check

Pause and warn if:

- broad agreement is being treated like confirmation of detailed settings
- important operational assumptions are being presented as fixed facts
- the thread is pushing into execution while key inputs are still unstable

## False-Completeness Check

Pause and warn if:

- the output sounds polished but blockers are hidden
- the output sounds complete but boundaries are still fuzzy
- the draft skips unresolved risks or dependencies
- the thread starts implementation before the governance path is stable
- a test or sample passes keyword checks but still fails behavior, semantics, or
  product usefulness
- a repair appears to close the issue by weakening a gate, hiding a warning, or
  accepting fallback-only output

## Closed-Loop Entry Check

Before authorizing `/goal` inside Closed Loop Council, confirm:

- the Core Challenger accepts that the issue is narrowed
- allowed files, forbidden files, commands, and stop conditions are explicit
- the repair can run without widening scope
- the loop will re-run five-agent review, Core Challenger, and Audit Specialist
  after repair
- `/goal` is not being used to approve release readiness, sample quality,
  product quality, or human-review gates

## Test-Gate Integrity Check

For QA, CDP, UI trace, 16-case, 403-case, release-shell, or packaging-adjacent
work, confirm:

- exact commands and key output are recorded
- artifacts, traces, screenshots, or layout bounds are recorded when applicable
- warnings, fallback, validators, and provider status remain visible
- no assertion or gate was weakened to make the test pass
- cleanup evidence is present when desktop shell, WebView2, CDP, or release
  shell was involved

## Reuse Decision Check

Before recommending a new build, make one explicit primary judgment:

- `use as-is`
- `adapt lightly`
- `build new`

## Handoff Check

Before handing off to tools or implementation, confirm:

- the governance verdict is explicit
- required actions are visible
- blocked actions are visible
- the next checkpoint is known
