#!/usr/bin/env bash
set -euo pipefail

repo_root="${1:-$(pwd)}"
new_manifest="$repo_root/.ownyourcode/manifest.json"
legacy_manifest="$repo_root/.claude/ownyourcode-manifest.json"

mkdir -p "$repo_root/.ownyourcode"

if [ -f "$new_manifest" ]; then
  echo "canonical manifest already present: $new_manifest"
  exit 0
fi

if [ -f "$legacy_manifest" ]; then
  cp "$legacy_manifest" "$new_manifest"
  echo "migrated manifest from $legacy_manifest -> $new_manifest"
  exit 0
fi

cat > "$new_manifest" <<JSON
{
  "version": "2.3.0",
  "profile": {
    "type": null,
    "configured_at": null,
    "settings": {}
  },
  "skills": [],
  "commands": []
}
JSON

echo "initialized new manifest at $new_manifest"
