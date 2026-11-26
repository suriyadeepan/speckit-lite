#!/bin/sh
# Mirror ~/.agents/skills/ into this repository's skills/ directory.

set -eu

SCRIPT_DIR=$(CDPATH= cd "$(dirname "$0")" && pwd)
REPO_ROOT=$(CDPATH= cd "$SCRIPT_DIR/.." && pwd)
SOURCE="$HOME/.agents/skills"
DESTINATION="$REPO_ROOT/skills"

if [ ! -d "$SOURCE" ]; then
    printf 'Skills source directory not found: %s\n' "$SOURCE" >&2
    exit 1
fi

if [ -L "$DESTINATION" ]; then
    printf 'Refusing to sync through symlinked destination: %s\n' "$DESTINATION" >&2
    exit 1
fi

TEMP_DIR=$(mktemp -d "$REPO_ROOT/.skills-sync.XXXXXX")
BACKUP_DIR=

cleanup() {
    if [ -n "$BACKUP_DIR" ] && [ -d "$BACKUP_DIR" ]; then
        if [ -e "$DESTINATION" ] || [ -L "$DESTINATION" ]; then
            rm -rf "$BACKUP_DIR"
        else
            mv "$BACKUP_DIR" "$DESTINATION"
        fi
    fi
    if [ -d "$TEMP_DIR" ]; then
        rm -rf "$TEMP_DIR"
    fi
}
trap cleanup EXIT
trap 'exit 1' HUP INT TERM

cp -R "$SOURCE/." "$TEMP_DIR/"

if [ -e "$DESTINATION" ]; then
    BACKUP_DIR="$REPO_ROOT/.skills-backup.$$"
    mv "$DESTINATION" "$BACKUP_DIR"
fi

if ! mv "$TEMP_DIR" "$DESTINATION"; then
    if [ -n "$BACKUP_DIR" ] && [ -d "$BACKUP_DIR" ]; then
        mv "$BACKUP_DIR" "$DESTINATION"
        BACKUP_DIR=
    fi
    printf 'Could not replace skills directory.\n' >&2
    exit 1
fi
TEMP_DIR=

if [ -n "$BACKUP_DIR" ]; then
    rm -rf "$BACKUP_DIR"
    BACKUP_DIR=
fi

trap - EXIT HUP INT TERM
printf 'Skills synced from %s to %s\n' "$SOURCE" "$DESTINATION"
