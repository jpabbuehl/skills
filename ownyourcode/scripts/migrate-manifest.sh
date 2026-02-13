#!/usr/bin/env bash
set -euo pipefail

repo_root="${1:-$(pwd)}"
new_manifest="$repo_root/.ownyourcode/manifest.json"
legacy_manifest="$repo_root/.claude/ownyourcode-manifest.json"
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
skill_root="$(cd "$script_dir/.." && pwd)"
template_manifest="$skill_root/templates/manifest.json"
template_agents="$skill_root/templates/AGENTS.md"
template_claude="$skill_root/templates/CLAUDE.md"
target_agents="$repo_root/AGENTS.md"
target_claude="$repo_root/CLAUDE.md"

mkdir -p "$repo_root/.ownyourcode"

if [ -f "$new_manifest" ]; then
  echo "canonical manifest already present: $new_manifest"
elif [ -f "$legacy_manifest" ]; then
  cp "$legacy_manifest" "$new_manifest"
  echo "migrated manifest from $legacy_manifest -> $new_manifest"
elif [ -f "$template_manifest" ]; then
  cp "$template_manifest" "$new_manifest"
  echo "initialized manifest from template -> $new_manifest"
else
  cat > "$new_manifest" <<JSON
{
  "version": "2.3.0",
  "profile": {
    "type": "experienced",
    "configured_at": null,
    "settings": {
      "career_focus": "learning only",
      "use_analogies": false
    }
  },
  "skills": [],
  "commands": []
}
JSON
  echo "initialized fallback manifest -> $new_manifest"
fi

if [ -f "$target_agents" ]; then
  echo "AGENTS.md already present: $target_agents"
elif [ -f "$template_agents" ]; then
  cp "$template_agents" "$target_agents"
  echo "created AGENTS.md from template -> $target_agents"
else
  echo "AGENTS.md template missing; skipped"
fi

if [ -f "$target_claude" ]; then
  echo "CLAUDE.md already present: $target_claude"
elif [ -f "$template_claude" ]; then
  cp "$template_claude" "$target_claude"
  echo "created CLAUDE.md from template -> $target_claude"
else
  echo "CLAUDE.md template missing; skipped"
fi
