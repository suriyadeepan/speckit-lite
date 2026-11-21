# Suriya's Codex skills

A battle-tested, lightweight version of GitHub Spec Kit: reusable Codex workflows for planning, implementing, analyzing, and converging software features. These skills are designed for repositories that use requirement, plan, and task documents with traceable IDs.

## Included skills

- **analyze** — Find material gaps and inconsistencies in requirements, architecture, plans, and TODOs.
- **converge** — Verify an implementation against its requirements and record remaining work.
- **implement** — Implement approved TODO tasks with lineage, verification, and commit guidance.
- **plan** — Turn requirements into an approved plan and ordered TODO.
- **tasks** — Generate a dependency-ordered, traceable TODO from an approved plan.

`AGENTS.md` contains the repository workflow guidance these skills refer to. It is intended to be copied into a project where you want these conventions applied; review and adapt it to that project's workflow first.

## Install

Requirements: Python 3.8 or newer. From this repository, run the same command on macOS, Linux, or Windows:

```sh
python setup.py
```

If your system uses `python3` on macOS or Linux:

```sh
python3 setup.py
```

The script installs the five skill folders into `~/.agents/skills/`, which Codex uses for user-wide skills. On Windows it resolves the home directory from the current user's profile. It does not modify existing skills; if any destination skill already exists, the script reports it and leaves it unchanged.

To update or replace already installed copies, run:

```sh
python setup.py --update
```

Restart Codex or start a new session after installing so it discovers the skills.

## Use in Codex

Start a Codex session in a project that follows the workflow described by `AGENTS.md`. Ask for the named workflow directly, for example:

```text
Use the plan skill to turn the feature request into requirements and an implementation plan.
```

```text
Use the tasks skill to create a dependency-ordered TODO from the approved plan.
```

```text
Use the implement skill for tasks T001-T003.
```

```text
Use the analyze skill to review the current requirements, plan, and TODO for material gaps.
```

```text
Use the converge skill to verify the whole feature against its requirements and plan.
```

These skills describe a workflow; they do not replace project-specific instructions. Add `AGENTS.md` to the project root if you want Codex to follow these repository conventions. Codex combines global and repository `AGENTS.md` instructions with the user's current request, so resolve conflicts before adopting the file.

## Manual install

Copy a skill directory (including its `SKILL.md`) into `~/.agents/skills/`. For a single project, use that project's `.agents/skills/` directory. Copy `AGENTS.md` to the project root only after adapting it to the project.

## License

No license is specified yet. Add a license before redistributing if you want to grant the public explicit reuse rights.
