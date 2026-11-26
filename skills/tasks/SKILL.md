---
name: tasks
description: Generate a traceable, dependency-ordered implementation TODO from feature plan.
---

0. Read `.current` before starting; use it as the authoritative active-feature context.

1. Find `docs/00x-<feature>-plan.md`; ask if unclear.

2. Read the plan, requirements, `AGENTS.md` and relevant TODOs.

3. Decompose scope into small, executable, dependency-ordered tasks.

4. Assign unique, stable hierarchical IDs (`T001`, `T001.1`, etc.) to every task and subtask. Never reuse IDs.

5. Every item must specify action, affected files, requirement IDs (`Rxxx`), plan IDs (`Pxxx`), task-level acceptance criteria derived from the plan, and dependencies where applicable.

6. Enforce lineage as a complete chain:
   `Rxxx → Pxxx → Txxx → Implementation → Tests`
   - Cover every applicable requirement and plan item.
   - Flag missing mappings, broken references and unjustified scope.

7. Include implementation, tests, compatibility checks, deployment/live validation and documentation.

8. Mark independent tasks `[P]` where safe.

9. Preserve existing task IDs and lineage when updating TODOs.

10. Create/update `docs/00x-<feature>-todo.md`.

No code, plan or requirements changes. Preserve project conventions; keep tasks concise and non-duplicative.
