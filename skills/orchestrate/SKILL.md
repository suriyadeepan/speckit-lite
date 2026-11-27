---
name: orchestrate
description: Automatically execute the feature lifecycle from planning through convergence.
---

# Orchestrate

Execute sequentially:

`$plan → approval → $tasks → $analyze → $implement → $converge`

- Invoke each specialist skill explicitly and pass outputs between stages.
- Wait for explicit plan approval; then continue automatically.
- Invoke `$decide` before asking the user about any decision.
- Escalate only when required by project rules, approval gates or unresolved ambiguity.
- If approved requirements or plans need changes, request approval.
- Repeat implementation and convergence until `CONVERGED` or `BLOCKED`.
- Never bypass specialist instructions, `AGENTS.md`, tests or approval gates.
- Report final status, completed/remaining tasks, verification and commits.

Keep output concise.
