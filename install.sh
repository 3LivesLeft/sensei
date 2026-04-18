#!/usr/bin/env bash
set -euo pipefail

CLAUDE_DIR="$HOME/.claude"
TARGET="$CLAUDE_DIR/CLAUDE.md"
PROFILES_DIR="$CLAUDE_DIR/sensei-profiles"
SOURCE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/CLAUDE.md"

mkdir -p "$CLAUDE_DIR"

if [ -f "$TARGET" ]; then
    BACKUP="$TARGET.backup.$(date +%Y%m%dT%H%M%S)"
    cp "$TARGET" "$BACKUP"
    echo "Existing CLAUDE.md backed up to: $BACKUP"
fi

cp "$SOURCE" "$TARGET"

mkdir -p "$PROFILES_DIR"

echo "Sensei is installed and active."
echo "  Instructions: $TARGET"
echo "  Profiles:     $PROFILES_DIR"
