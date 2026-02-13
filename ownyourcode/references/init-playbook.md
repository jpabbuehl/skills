# OwnYourCode Init Playbook (Tool-Agnostic)

Use this playbook for `init` stage in Codex/Claude.

## Required Questions

Ask in order:

1. Profile type:
- Junior
- Career Switcher
- Interview Prep
- Experienced
- Custom

2. Career focus:
- Full extraction
- Interview tips only
- Learning only

3. Analogies:
- Use analogies? yes/no
- If yes: ask analogy domain (free text)

4. Profile-specific:
- Junior: coding background
- Career Switcher: previous field, focus area
- Interview Prep: position title, target company
- Experienced: background summary
- Custom: teaching style, feedback style, pacing, personal touch

5. Project definition:
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
