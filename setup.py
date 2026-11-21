#!/usr/bin/env python3
"""Install this repository's skills into the current user's Codex skill directory."""

import argparse
import shutil
import sys
from pathlib import Path

SKILLS = ("analyze", "converge", "implement", "plan", "tasks")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--update",
        action="store_true",
        help="replace existing installed copies of these skills",
    )
    args = parser.parse_args()

    repo = Path(__file__).resolve().parent
    destination_root = Path.home() / ".agents" / "skills"
    destination_root.mkdir(parents=True, exist_ok=True)

    copied = []
    skipped = []
    for name in SKILLS:
        source = repo / "skills" / name
        if not source.is_dir() or not (source / "SKILL.md").is_file():
            print(f"Missing skill source: {source}", file=sys.stderr)
            return 1
        destination = destination_root / name
        if destination.exists():
            if not args.update:
                skipped.append(name)
                continue
            shutil.rmtree(destination)
        shutil.copytree(source, destination)
        copied.append(name)

    if copied:
        print(f"Installed: {', '.join(copied)}")
    if skipped:
        print(f"Already present (unchanged): {', '.join(skipped)}")
        print("Use --update to replace these installed copies.")
    print(f"Skills directory: {destination_root}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
