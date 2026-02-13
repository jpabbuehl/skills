# Skillshare Skills Repository

Organization-level skills managed with Skillshare and synced to multiple AI tools.

## Fresh Machine Setup (macOS/Linux)

1. Install Skillshare CLI:

```bash
curl -fsSL https://raw.githubusercontent.com/runkids/skillshare/main/install.sh | sh
```

Optional (macOS/Homebrew):

```bash
brew install runkids/tap/skillshare
```

2. Initialize global Skillshare:

```bash
skillshare init --no-copy --all-targets --git --skill
skillshare version
```

3. Ensure targets are configured:

```bash
skillshare target add claude ~/.claude/skills -g
skillshare target add codex ~/.codex/skills -g
skillshare target list -g
```

4. Install skills from this repo and sync:

```bash
skillshare install github.com/jpabbuehl/skills/ownyourcode --name ownyourcode -g
skillshare install github.com/jpabbuehl/skills/frontend-design --name frontend-design -g
skillshare install github.com/jpabbuehl/skills/skillshare --name skillshare -g
skillshare sync -g
skillshare status -g
```

## Existing Machine (already configured)

```bash
skillshare install github.com/jpabbuehl/skills/ownyourcode --name ownyourcode --force -g
skillshare sync -g
skillshare status -g
```

## Where To Run Commands

- Global mode (`-g`) commands can be run from any directory.
- Project mode (`-p`) commands should be run from a project root containing `.skillshare/config.yaml`.

## OwnYourCode Usage

See `ownyourcode/README.md` for project-level setup and workflow.
