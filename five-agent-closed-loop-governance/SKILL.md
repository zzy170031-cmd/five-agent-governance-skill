---
name: five-agent-closed-loop-governance
description: Use when the user wants a project thread to start with a real five-subagent governance workflow, or when ongoing project work must be reviewed through Maxwell, Dirac, Parfit, Wegener, and Popper before implementation, merge, release, or repeated correction. Includes the Closed Loop Council upgrade for work that must iterate through five-agent review, Core Challenger acceptance, optional bounded /goal repair, and re-review until closed; Audit Specialist joins only for evidence-sensitive test, commit, release, packaging, artifact, cleanup, or dirty-ownership gates.
---

# Five Agent Closed Loop Governance

Use this skill to turn a project thread into a real five-subagent working council with an optional closed-loop repair and re-review mode.

This is not a generic "think harder" skill. It is a strict project governance skill with three jobs:

1. Detect or request the startup protocol that authorizes real subagent use.
2. Run the project through the fixed five-agent chain:
   - `Maxwell`
   - `Dirac`
   - `Parfit`
   - `Wegener`
   - `Popper`
3. When work is repetitive or failure-prone, run the upgraded closed loop:
   five-agent review -> Core Challenger challenge and scope acceptance -> optional bounded `/goal`
   repair -> five-agent/Core re-review. Add Audit Specialist only for evidence-sensitive test, commit, release, packaging, artifact, cleanup, or dirty-ownership gates.

## Trigger

Use this skill when any of the following is true:

- The user explicitly asks for `five-agent-governance`.
- The user explicitly asks for `five-agent-closed-loop-governance`.
- The user asks to start a project thread with real five-subagent mode.
- The user wants a project, feature, refactor, or release process to be governed by named agents.
- The user expects real subagents, not role-play or a single-agent summary.
- The user asks for repeated correction, repeated confirmation, closed-loop review, or `/goal` repair after governance review.
- The task is a test, QA, release, sample, KB, prompt, validator, runtime, UI, or packaging gate where a first pass may look green while hidden defects remain.

## Non-trigger

Do not use this skill for:

- casual chat
- one-off factual Q&A
- tiny non-project requests
- threads where the user has not asked for real subagent governance
- unbounded `/goal` repair where the files, commands, and stop conditions are not authorized

## Core rule

If the user wants this mode, prefer **real subagents**.

Do not silently simulate the five agents inside one voice when real subagents are available and the user has requested this mode.

If real subagents cannot be started, say so clearly and stop short of claiming that full governance ran.

## Startup protocol

For a new project thread, first check whether the user has provided a clear startup instruction such as:

- `Enable five-agent-governance real five-subagent mode in this project thread`
- `Enable five-agent-closed-loop-governance real five-subagent mode in this project thread`
- `Start five-agent-governance and launch Maxwell, Dirac, Parfit, Wegener, and Popper as real subagents`
- `Start five-agent-closed-loop-governance and launch Maxwell, Dirac, Parfit, Wegener, and Popper as real subagents`

If the user has already said the equivalent in plain language, treat that as sufficient authorization.

Once authorized:

1. Start the five real subagents.
2. Report which agents started successfully.
3. Only continue if all five are online.

Read [references/startup-protocol.md](references/startup-protocol.md) for the exact boot sequence and failure handling.

## Operating modes

Use one of two governance modes after boot:

- `Full Council`
  - new projects
  - major features
  - architecture changes
  - merge gates
  - release gates
- `Fast Gate`
  - ongoing implementation inside an already-governed project thread
  - smaller scoped work that still needs the five-agent gate
- `Closed Loop Council`
  - repeated correction or repeated test confirmation
  - sample, KB, prompt, oracle, or human-review guidance closure
  - runtime, validator, UI, provider, or exporter fixes that can regress after a narrow repair
  - four-group trace, 16-case, cross-drift, 403-case readiness, release-shell, or packaging-adjacent gates
  - work where the controller should only receive a report after all in-scope issues close or a blocker appears

Read [references/thread-checkpoints.md](references/thread-checkpoints.md) to choose the right checkpoint and mode.

## Fixed chain

Run the agents in this order:

1. `Maxwell`
2. `Dirac`
3. `Parfit`
4. `Wegener`
5. `Popper`

The chain is strict:

- `Maxwell` clarifies and stabilizes the need.
- `Dirac` proposes structure and implementation direction.
- `Parfit` reviews UX, testing, operations, and consistency risks.
- `Wegener` interrogates the first three agents twice, then self-reviews twice.
- `Popper` challenges Wegener three times and issues the final verdict.

Closed Loop Council adds two governance roles after the five agents:

- `Core Challenger`: uses repeated questioning to test reasonableness, usefulness, applicability, and major-risk exposure before any `/goal` loop starts. It also decides whether the issue scope is truly narrowed, whether `/goal` may start, and whether the post-repair result is only superficially fixed.
- `Audit Specialist`: joins only when the task involves tests, staged/commit scope, release, packaging, artifacts, cleanup, dirty ownership, or other evidence-sensitive gates. It reviews evidence, dirty ownership, test artifacts, cleanup state, and whether assertions or gates were weakened. Audit is read-only unless separately authorized.

Read:

- [references/maxwell-discovery.md](references/maxwell-discovery.md)
- [references/wegener-interrogation.md](references/wegener-interrogation.md)
- [references/popper-verdict.md](references/popper-verdict.md)
- [references/closed-loop-governance.md](references/closed-loop-governance.md)

## Required output discipline

Every formal governance pass must produce structured records, not vague summaries.

Use the contracts in [references/output-contracts.md](references/output-contracts.md).

At minimum, keep these visible in the thread:

- current stage and checkpoint
- agent startup status
- each agent's position
- Wegener interrogation and self-review results
- Popper challenge record
- Core Challenger reasoning, practicality, applicability, scope acceptance, and post-repair challenge when Closed Loop Council is active
- Audit Specialist evidence record when Closed Loop Council includes an evidence-sensitive test, commit, release, packaging, artifact, cleanup, or dirty-ownership gate
- `/goal` authorization, repair rounds, and stop condition when `/goal` is used
- final governance verdict

## Gate checks

Always run the checklists in [references/checklists.md](references/checklists.md) before allowing a phase to pass.

Especially protect against:

- premature execution
- false completeness
- hidden assumptions presented as confirmed facts
- skipping the final Popper verdict
- using the full closed loop just because the rule exists, without judging whether the task needs it
- using `/goal` before the Core Challenger accepts a narrow scope
- weakening tests, warnings, validators, or release gates to make a loop pass
- reporting back to the controller while in-scope issues remain repairable

## Closed Loop Council

Use Closed Loop Council when a task needs repeated work/review/repair cycles.

Default sequence:

1. Do the assigned work inside the authorized scope.
2. Run the listed validation commands, tests, scans, traces, or artifact checks.
3. Run the five-agent review chain.
4. Run Core Challenger challenge and scope acceptance.
5. Run Audit Specialist evidence review only when the work is evidence-sensitive: tests, commit/staging scope, release, packaging, artifacts, cleanup, dirty ownership, or gate integrity.
6. If issues remain inside the authorized scope and `/goal` is explicitly authorized, use `/goal` as the repair executor.
7. Re-run validation.
8. Re-run five-agent review, Core Challenger, and Audit Specialist when Audit was active.
9. Repeat until all issues close or a stop condition is reached.

Use `/goal` only when all of these are true:

- the problem is narrowed to authorized files, fields, commands, and stop conditions
- Core Challenger has used repeated questioning to reduce major-risk uncertainty and accepts the narrowed repair scope
- the repair needs repeated fix/test/confirm cycles, or is mechanical and bounded enough that repeated validation can close it without new product judgment
- the loop cannot enter forbidden actions such as packaging, push, commit, 403-case, or desktop-shell startup unless explicitly authorized

Do not use `/goal` when:

- the problem needs product judgment, release approval, or human approval
- the scope is still ambiguous
- the loop would need unauthorized files
- the only way to pass is to weaken tests, hide warnings, accept fallback-only output, or lower a gate

If `/goal` starts, do not send intermediate "still needs small fix" reports to the controller while the issue remains inside the authorized repair scope. Continue the `/goal` -> validation -> five-agent/Core review loop until the issue is closed, or report only for a blocker, scope conflict, environment block, forbidden action, or newer user/controller instruction.

Controller reports from this mode should happen only when the loop is closed, or when a blocker, scope conflict, environment block, forbidden action, or newer user/controller instruction stops the loop.

## Proportionality and rule-writing boundary

Do not hard-code the heaviest governance path into every task.

Use these levels:

- `must`: safety, ownership, release, package, destructive action, secret, runtime source-of-truth, 403-case, and explicit user gate boundaries.
- `should`: default review loops for repeated correction, risky tests, QA evidence, and false-completeness-prone work.
- `may`: optional extra rounds, Audit Specialist depth on non-evidence-sensitive work, longer Core Challenger interrogation, or `/goal` repair when the task is already bounded.

Before choosing Full Council, Fast Gate, or Closed Loop Council, record why that level is appropriate. If a simpler five-agent + Core Challenger pass is enough, do not force `/goal` or a full repeat loop.

## Downstream tools

This skill governs decision flow first. Tools come after governance.

Use downstream integrations only after the governance result supports them:

- Notion for spec, plan, and task capture
- GitHub for implementation and review flow
- Figma for UI/design execution

See [references/protocol-overview.md](references/protocol-overview.md) for the allowed handoff logic.
