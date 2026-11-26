---
name: converge
description: Verify implementation against requirements, plan, architecture and TODOs; trace gaps to their source and record remaining work until converged.
---

0. Read `.current` before starting; use it as the authoritative active-feature context.

1. Read:
   - `docs/00x-<feature>-requirements.md`
   - `docs/00x-<feature>-plan.md`
   - `docs/00x-<feature>-todo.md`
   - `AGENTS.md`, architecture docs and relevant code, tests and configuration.

2. If task IDs are provided (single, multiple or range, e.g. T001-T005), scope findings to those tasks and dependencies; inspect broader artifacts for context. Otherwise, converge the entire feature.

3. Inspect implementation and verification evidence. Never trust TODO statuses without evidence.

4. Trace lineage (`Rxxx → Pxxx → Txxx → Code → Tests`):
   - Follow task references to originating requirements and plan decisions.
   - Flag missing, broken or unjustified references and scope deviations.
   - Trace every finding to its originating requirement or plan decision where applicable.

5. Verify:
   - **Requirements:** All applicable requirements are implemented.
   - **Acceptance criteria:** All applicable criteria are demonstrably satisfied.
   - **Plan:** Approved decisions, approaches and trade-offs are followed or deviations justified.
   - **Architecture:** Constraints in requirements, plan, TODO, `AGENTS.md` and architecture docs are respected.
   - **Tasks:** Completion statuses match actual implementation.
   - **Tests:** Coverage adequately verifies requirements and acceptance criteria.
   - **Cross-cutting concerns:** Relevant interfaces, integrations, compatibility, security, configuration and deployment constraints.

6. Report each finding with unique ID, severity, source lineage, affected files, evidence and remaining work. Include concise resolution bullets covering problem, lineage, action and verification result.

7. Append missing work as unchecked, uniquely ID'd tasks to the canonical TODO:
   - Preserve existing tasks and IDs.
   - Reference originating requirement and plan IDs.
   - Include affected files, dependencies and verifiable acceptance criteria.
   - Avoid duplicates. Never silently modify approved requirements or plan decisions.

8. Repeat after remediation: reinspect implementation and updated TODO; reverify lineage and all applicable expectations. Continue until no gaps remain or human input is required.

9. Do not implement fixes or modify source code.

10. Report status:
    - `CONVERGED`: All applicable expectations satisfied with sufficient evidence.
    - `NOT CONVERGED`: Gaps, failures or unverified expectations remain.
    - `BLOCKED`: Human input or external dependencies prevent progress.

Never declare convergence solely because TODOs are checked or tests pass. Keep output concise.
