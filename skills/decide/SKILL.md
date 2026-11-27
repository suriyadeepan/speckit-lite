---
name: decide
description: Resolve project decisions autonomously using available evidence; escalate only when user input or approval is required.
---

# Decide

Input: decision, options and current task context.

1. Check evidence in order; stop when sufficient:
   `AGENTS.md → .current → approved requirements/plan → code → tests → project journal`.

2. Classify and act:
   - **Routine:** Reversible and within scope. Decide and continue.
   - **Significant:** Design-impacting but within approved scope. Decide, document rationale in the journal and report.
   - **Gated:** Scope/requirement changes, destructive or irreversible actions, security, external systems, explicit approval gates, or unresolved ambiguity. Escalate.

3. Output exactly one:
   - `DECIDED: <choice> — <evidence>`
   - `ESCALATE: <question> — <options, evidence, recommendation>`

Never override project rules or approval gates. Never interpret silence as approval.
