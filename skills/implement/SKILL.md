---
name: implement
description: Implement TODO tasks with lineage and dependency tracking, parallelize safe work, test and commit.
---

0. Read `.current` before starting; use it as the authoritative active-feature context

1. Refer to `docs/00x-<feature>-todo.md` for tasks and acceptance criteria.

2. Take task/subtask IDs at any nesting level, including ranges (e.g. T001-T005). Ask if missing.

3. Read relevant requirements, plan, `AGENTS.md` and dependencies.
   - Trace tasks through requirement (`Rxxx`) and plan (`Pxxx`) IDs.
   - Flag broken or missing references before implementation.

4. Execute dependency-aware:
   - Start only when dependencies are complete.
   - Parallelize independent tasks where safe; avoid dependency, file-conflict and shared-state conflicts.
   - Respect task ordering and project conventions.

5. Implement against linked requirements, plan decisions and acceptance criteria.
   - Preserve lineage in tests and verification.
   - Report unresolved conflicts; never silently bypass requirements or approved architecture.

6. Create persistent tests under `tests/`. No disposable snippets or one-shot verification.

7. Run relevant tests and the broader suite when appropriate.

8. Commit only when tests pass and acceptance criteria are met. Use meaningful, context-aware messages.

9. Report completed task IDs, changed files, test results and commits. On failure, report cause, exact location and remaining work. Never mark unsuccessful tasks complete.

Keep output concise.
