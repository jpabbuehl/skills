<h1 align="center">
  <img width="600" alt="OwnYourCode" src="https://github.com/user-attachments/assets/e3919357-88be-4f5e-af3a-aa3ac440bd98" />
</h1>

<p align="center">
  <strong>AI-Mentored Development</strong><br>
  <em>AI guides, you build. You own the result.</em>
</p>

<p align="center">
  <sub>v2.3.0 · MIT License</sub>
</p>

---

## The Problem

AI coding tools optimize for **shipping**. The risk: code that works but isn't truly yours. Hard to debug without context. Hard to extend without asking again. Hard to defend when it matters.

**OwnYourCode flips this.** AI becomes your mentor, not your coder. It guides, questions, and reviews — but you write the code.

**The result:** Code you understand. Code you can extend. Code that's actually yours.

---

## Who This Is For

`init` uses a default mentoring preset:
- Profile: `Experienced`
- Career focus: `learning only`
- Analogies: `off`

| Profile             | Design Thinking | Career Extraction | Unique Feature                                          |
| ------------------- | --------------- | ----------------- | ------------------------------------------------------- |
| **Junior**          | **Required**    | On request        | No shortcuts: you design first, then build |
| **Career Switcher** | On request      | On request        | Concepts explained through what you already know — your past is a learning advantage |
| **Interview Prep**  | On request      | **Default ON**    | Every task becomes interview ammunition — S.T.A.R story and resume bullet extraction |
| **Experienced**     | On request      | On request        | You have the experience, get direct feedback and peer-level collaboration |
| **Custom**          | On request      | On request        | Mix and match to fit how you learn |

You can still override these defaults later via `profile` stage.

---

## Quick Start (OwnYourCode Skill)

Machine-level Skillshare setup and multi-skill installation are documented in the parent repo README:

- `../README.md` (skills repository root)

### 1) Install/update OwnYourCode skill (global)

```bash
skillshare install github.com/jpabbuehl/skills/ownyourcode --name ownyourcode --force -g
skillshare sync -g
skillshare status -g
```

### 2) Per-project initialization (from scratch)

Run these commands from project root:

```bash
~/.config/skillshare/skills/ownyourcode/scripts/migrate-manifest.sh .
mkdir -p ownyourcode/product ownyourcode/specs/active ownyourcode/career/stories
touch ownyourcode/product/mission.md ownyourcode/product/stack.md ownyourcode/product/roadmap.md
```

Invoke OwnYourCode in Claude or Codex:

```text
Use ownyourcode to initialize this project
```

`init` will now ask only for project details (mission, stack, and roadmap phases) by default.

---

## How It Works

### The 4 Protocols

| Protocol                 | Rule                                                                           |
| ------------------------ | ------------------------------------------------------------------------------ |
| **Active Typist**        | You write all code. AI provides patterns (max 8 lines), guidance, and reviews. |
| **Socratic Teaching**    | AI asks questions instead of giving answers.                                   |
| **Evidence-Based**       | AI verifies with official docs before answering.                               |
| **Systematic Debugging** | READ → ISOLATE → DOCS → FIX.                                                   |

### The 6 Gates

Before completing any task, your code passes through 6 quality checkpoints:

<div align="center">

```mermaid
%%{init: {'theme': 'base', 'themeVariables': {'lineColor': '#aaa'}}}%%
flowchart TB
    Start((" ")) -->|/own:done| Code(["YOUR CODE"])
    Code --> G1["1. Ownership<br/>Walk me through this code"]
    G1 --> G2["2. Security<br/>Is user input validated?"]
    G2 --> G3["3. Errors<br/>What if this operation fails?"]
    G3 --> G4["4. Performance<br/>What happens at<br/>10,000 items?"]
    G4 --> G5["5. Readability<br/>Would a new dev<br/>understand?"]
    G5 --> G6["6. Testing<br/>What tests prove it works?"]
    G6 --> Done(["COMPLETE"])
    Done -.->|Next Feature| Start

    style Start fill:#aaa,stroke:#aaa
    style Code fill:#2d2d2d,color:#fff
    style G1 fill:#8b3a3a,color:#fff
    style G2 fill:#2d2d2d,color:#fff
    style G3 fill:#2d2d2d,color:#fff
    style G4 fill:#2d2d2d,color:#fff
    style G5 fill:#2d2d2d,color:#fff
    style G6 fill:#2d2d2d,color:#fff
    style Done fill:#2d5a3d,color:#fff
```

</div>

> **Gate 1 blocks completion.** Can't explain your code? Don't ship it.

### The Flywheel

Learnings compound across projects. Patterns that worked. Mistakes you won't repeat. Career value extracted from every task.

---

## Workflow (Claude + Codex)

Use natural-language invocation with the `ownyourcode` orchestrator skill.

| Stage | Example prompt |
| ----- | -------------- |
| `init` | "Use ownyourcode to initialize this project" |
| `feature` | "Use ownyourcode to plan a new feature: auth flow" |
| `advise` | "Use ownyourcode advise for this task" |
| `guide` | "Use ownyourcode guide while I implement this" |
| `stuck` | "Use ownyourcode stuck on this error" |
| `done` | "Use ownyourcode done and run the 6 gates" |
| `retro` | "Use ownyourcode retro and capture learnings" |
| `status` | "Use ownyourcode status for this repo" |
| `profile` | "Use ownyourcode profile and update preferences" |
| `test` | "Use ownyourcode test planning for this feature" |
| `docs` | "Use ownyourcode docs for this change" |

### Trigger model in Codex

- Primary: natural language ("Use ownyourcode ...").
- Also valid: explicitly ask Codex to use a specific skill by name.
- Codex slash commands are built-in command surfaces; custom `/own:*` commands are not provided by this Skillshare setup.

### Legacy command mapping (if you previously used Claude slash commands)

| Old | New |
| --- | --- |
| `/own:init` | "Use ownyourcode to initialize this project" |
| `/own:feature` | "Use ownyourcode to plan a new feature" |
| `/own:advise` | "Use ownyourcode advise for this task" |
| `/own:guide` | "Use ownyourcode guide while I code" |
| `/own:done` | "Use ownyourcode done and run the 6 gates" |
| `/own:retro` | "Use ownyourcode retro and capture learnings" |

### `/own:init` compatibility

- Claude Code: works only if a matching custom command/skill exists in your Claude setup (check with `/help`).
- Codex: do not use `/own:init`; use `ownyourcode` skill invocation (`/skills`, `$ownyourcode`, or natural language).

---

## MCP Setup (Recommended)

MCPs provide real-time documentation and production code examples.

```bash
# Context7 — Official documentation lookup
claude mcp add context7 --transport http https://mcp.context7.com/mcp

# Octocode — GitHub code search
https://octocode.ai/#installation
```

Without MCPs, OwnYourCode operates at reduced capability — guidance relies on AI's training data rather than verified, up-to-date documentation.

---

## Philosophy

> "Won't this slow me down?"

Yes. That's the point.

Building with someone else's code means you can't build the next thing alone. Building yourself takes longer — but now you can build anything.

[Full Philosophy →](guides/philosophy.md)

---

<p align="center">
  <sub>MIT License</sub>
</p>
