# OwnYourCode Migration Notes (Claude -> Skillshare)

## Goals

- Keep OwnYourCode reusable as an organization-level skill.
- Make behavior tool-agnostic for Codex and Claude.
- Preserve learning continuity and artifact paths.

## What Changed

1. Single orchestrator skill (`ownyourcode`) replaces command-only UX.
2. Natural-language invocation is primary.
3. Canonical manifest moved to `.ownyourcode/manifest.json`.
4. Legacy `.claude/ownyourcode-manifest.json` remains as read-only migration input.
5. Shared learning path remains `~/ownyourcode/learning/LEARNING_REGISTRY.md`.

## Compatibility Rules

- Do not delete legacy `.claude/*` assets in v1.
- Keep generated artifact paths in `ownyourcode/` stable.
- Keep mentorship-first behavior and 6 gates intact.

## Operational Notes

- Install into global source with `skillshare install <local-path> --force -g`.
- Distribute with `skillshare sync -g`.
- Verify availability in both `~/.codex/skills` and `~/.claude/skills`.
