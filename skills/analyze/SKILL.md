---
name: analyze
description: Identify material inconsistencies and quality gaps across requirements, architecture, plans and TODOs.
---

0. Read `.current` before starting; use it as the authoritative active-feature context.

1. Read `docs/00x-<feature>-requirements.md`, plan, TODOs, `AGENTS.md` and architecture docs. Assume plan and approved TODO exist.

2. Validate ID lineage (`Rxxx → Pxxx → Txxx`):
   - Flag missing, invalid, orphaned or broken references.
   - Ensure requirements reach tasks and no plan/task introduces unjustified scope.

3. Check requirements, plan and architecture consistency:
   - Identify missing requirements, contradictory decisions, unjustified assumptions and scope deviations.
   - Check requirements against architectural constraints; flag conflicts, blockers and missing implementation paths.

4. Check TODO coverage and quality:
   - Identify missing, orphaned, duplicated, conflicting or vague tasks.
   - Check dependencies, ordering, acceptance criteria and independently verifiable outcomes.
   - Flag stale statuses, unnecessary fragmentation and missing approval gates for destructive, deployment, security or infrastructure changes.

5. Report actionable findings with unique IDs, severity, location, evidence and suggested fix.

6. Do not modify files or invent requirements. Ignore cosmetic differences and harmless documentation overlap.

7. Report only issues materially affecting requirements coverage, correctness, architecture, security or verification. Distinguish actual defects from optional improvements. Do not turn harmless wording differences into mandatory work.

8. Merge related findings; recommend only meaningful engineering improvements.

Keep output concise. If no issues, report `CLEAN`.
