#!/usr/bin/env bash
# PreToolUse hook: block edits/writes to protected files.
# Reads the hook payload from stdin, inspects .tool_input.file_path,
# and exits 2 (blocking) if the path targets a protected file.

set -euo pipefail

input="$(cat)"
file_path="$(printf '%s' "$input" | jq -r '.tool_input.file_path // empty')"

# Nothing to check.
if [ -z "$file_path" ]; then
  exit 0
fi

case "$file_path" in
  *.env* | *package-lock.json* | *.git/*)
    echo "Blocked: '$file_path' is a protected file. If you really intend to change it, edit it manually outside of Claude Code." >&2
    exit 2
    ;;
esac

exit 0
