# OwnYourCode Init Playbook (Tool-Agnostic)

Use this playbook for `init` stage in Codex/Claude.

## Default Preset

Apply this by default (without asking):

- `profile.type`: `experienced`
- `profile.settings.career_focus`: `learning only`
- `profile.settings.use_analogies`: `false`

Only ask profile/preference questions if the user explicitly asks to customize.

## Required Questions

Ask in order:

1. Project definition:
- Mission statement
- Primary stack
- Roadmap phases (at least 3)

## Files To Produce

1. `.ownyourcode/manifest.json`
- Persist profile type and settings.

2. `ownyourcode/product/mission.md`
- Problem, audience, value, non-goals.

3. `ownyourcode/product/stack.md`
- Chosen technologies and rationale.

4. `ownyourcode/product/roadmap.md`
- 3 phases minimum with checklist tasks.

## Completion Criteria

Do not complete `init` until:

1. All required questions answered (or explicitly skipped by user).
2. Manifest and product files are written.
3. Summary shown and user confirms.
