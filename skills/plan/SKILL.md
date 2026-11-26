---
name: plan
description: Resolve feature requirements and produce an implementation plan 
---

1. Copy user-provided requirements into `docs/00x-<feature>-requirements.md`.
   - Preserve intent; do not invent requirements.
   - Identify ambiguities, contradictions, gaps and assumptions.
   - Assign unique, stable hierarchical IDs to every requirement and subrequirement (`R001`, `R001.1`, etc.). Never reuse IDs.

2. Resolve material ambiguities with targeted questions before planning. Never silently assume answers.

3. Read requirements, `AGENTS.md`, existing docs and relevant code.

4. Inspect architecture, dependencies, existing implementation and Git status.

5. Create and switch to `feat/<1-2-word-slug>` (max 20 chars), derived from requirements. Skip if already on the appropriate branch. Never discard existing changes.

6. Identify gaps, assumptions, risks and affected files.

7. Verify architecture compatibility:
   - Check runtime, CPU architecture, native dependencies, container format and deployment target.
   - Classify each as `VERIFIED`, `ASSUMED` or `UNKNOWN`, with evidence.
   - Identify automated compatibility checks.

8. Create `docs/00x-<feature>-plan.md` covering:
   - Scope and implementation approach.
   - Affected files and dependencies.
   - Architecture compatibility matrix.
   - Risks and mitigations.
   - Acceptance criteria and validation.
   - References to applicable requirement IDs.
   - Unique, stable hierarchical IDs for every plan item and subitem (`P001`, `P001.1`, etc.). Never reuse IDs.

9. Create/update `.current` with the active feature ID, requirements, plan, expected TODO, and journal paths.

10. Present a concise, simplified version of requirements and plan for explicit human approval 

Keep documents concise. No code changes during planning.
