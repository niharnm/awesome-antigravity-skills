# Awesome Antigravity Skills [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of awesome Agent Skills, skill collections, and resources for [Google Antigravity](https://antigravity.google) — the agent-first IDE powered by Gemini 3.

Antigravity adopted the open **Agent Skills** standard: a skill is just a folder with a `SKILL.md` file that teaches the agent how to do a specific task well. That means most skills written for Claude Code, Cursor, or Codex CLI work in Antigravity too — and this list embraces that overlap.

Star counts are point-in-time snapshots (July 2026) and will drift.

## Contents

- [What is Antigravity?](#what-is-antigravity)
- [What are Agent Skills?](#what-are-agent-skills)
- [Official Resources](#official-resources)
- [Skill Collections](#skill-collections)
- [Skills by Category](#skills-by-category)
  - [Development & Code Quality](#development--code-quality)
  - [Design & Frontend](#design--frontend)
  - [Science & Data](#science--data)
  - [Game Development](#game-development)
  - [Context & Memory](#context--memory)
  - [Workflow & Process](#workflow--process)
- [Starter Skills in This Repo](#starter-skills-in-this-repo)
- [Installing Skills](#installing-skills)
- [Creating Your Own Skill](#creating-your-own-skill)
- [Related Lists](#related-lists)
- [Contributing](#contributing)
- [License](#license)

## What is Antigravity?

[Google Antigravity](https://antigravity.google) is Google's agent-first IDE built around Gemini 3. Instead of autocompleting syntax, you orchestrate agents that plan, execute, and verify multi-step coding missions. The platform spans the **Antigravity IDE**, **Antigravity CLI**, and **Antigravity SDK** (see the [official docs](https://antigravity.google/docs)).

## What are Agent Skills?

From the [official skills documentation](https://antigravity.google/docs/skills):

> Skills are an open standard for extending agent capabilities. A skill is a folder containing a `SKILL.md` file with instructions that the agent can follow when working on specific tasks.

Skills follow a **progressive disclosure** pattern:

1. **Discovery** — at conversation start the agent sees skill names + descriptions.
2. **Activation** — if a skill looks relevant, the agent reads the full `SKILL.md`.
3. **Execution** — the agent follows the instructions while working.

Because the format is an open standard shared with Claude Code, Cursor, Codex CLI, Gemini CLI, and others, the skill ecosystems are largely interoperable.

## Official Resources

- [Antigravity](https://antigravity.google) — product home and download.
- [Antigravity Documentation](https://antigravity.google/docs) — IDE, CLI, SDK, and migration guides.
- [Agent Skills docs](https://antigravity.google/docs/skills) — the authoritative skill format reference: locations, frontmatter, best practices.
- [google-labs-code/stitch-skills](https://github.com/google-labs-code/stitch-skills) — Google Labs' own Agent Skills library for the Stitch MCP server (★ 7.5k, Jul 2026).

## Skill Collections

Large multi-skill libraries that install into Antigravity (and other agents):

- [benjaminasterA/antigravity-awesome-skills](https://github.com/benjaminasterA/antigravity-awesome-skills) — 889+ universal skills with a one-command installer (`npx antigravity-awesome-skills`), curated bundles per role, and a full catalog. The largest Antigravity-branded collection (★ 58, Jul 2026, fast-moving).
- [sickn33/agentic-awesome-skills](https://github.com/sickn33/agentic-awesome-skills) — installable library of 1,900+ agentic skills for Claude Code, Cursor, Codex CLI, Gemini CLI, Antigravity, and more (★ 43.4k, Jul 2026).
- [addyosmani/agent-skills](https://github.com/addyosmani/agent-skills) — production-grade engineering skills for AI coding agents, tagged for Antigravity compatibility, maintained by Addy Osmani (★ 78.8k, Jul 2026).
- [tech-leads-club/agent-skills](https://github.com/tech-leads-club/agent-skills) — a secure, validated skill registry with a quality gate for professional agents (★ 4.9k, Jul 2026).
- [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) — the highest-starred skills list in the ecosystem; Claude-flavored but the SKILL.md format carries over (★ 67.9k, Jul 2026).
- [lingxling/awesome-skills-cn](https://github.com/lingxling/awesome-skills-cn) — 中文社区聚合库，汇集 7000+ skills 与中文教程 (★ 187, Jul 2026).

## Skills by Category

Curated picks — individual skills or focused libraries worth installing on their own.

### Development & Code Quality

- [Graphify](https://github.com/Graphify-Labs/graphify) — turns any codebase, SQL schema, or script folder into a knowledge graph the agent can query; works across Antigravity, Claude Code, Codex, Cursor (★ 89.2k, Jul 2026).
- [agent-skills by Addy Osmani](https://github.com/addyosmani/agent-skills) — engineering-judgment skills: code review, performance, web quality (★ 78.8k, Jul 2026).
- [cc-sdd](https://github.com/gotalab/cc-sdd) — spec-driven development harness: turn approved specs into long-running autonomous implementation (★ 3.6k, Jul 2026).

### Design & Frontend

- [ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) — design intelligence for building professional UI/UX across platforms; the single most-starred skill repo on GitHub (★ 107k, Jul 2026).
- [stitch-skills](https://github.com/google-labs-code/stitch-skills) — design-to-code skills that pair with Google's Stitch MCP server (★ 7.5k, Jul 2026).

### Science & Data

- [scientific-agent-skills](https://github.com/K-Dense-AI/scientific-agent-skills) — 148 ready-to-use skills that turn any agent into an AI scientist: bioinformatics, genomics, scientific visualization (★ 31k, Jul 2026).

### Game Development

- [awesome-gamedev-agent-skills](https://github.com/gamedev-skills/awesome-gamedev-agent-skills) — 66 game-dev skills with a master router that loads the right skill for your engine (Unity, Unreal…) (★ 288, Jul 2026).

### Context & Memory

- [context-mode](https://github.com/mksglu/context-mode) — context-window optimization: sandboxes tool output (~98% reduction), persists session memory, enforces routing (★ 19k, Jul 2026).

### Workflow & Process

- [agent-skills by tech-leads-club](https://github.com/tech-leads-club/agent-skills) — validated workflow skills with security review baked into the registry (★ 4.9k, Jul 2026).
- [awesome-agv](https://github.com/irahardianto/awesome-agv) — coding standards and best-practice packs designed to elevate agent output (★ 150, Jul 2026).

## Starter Skills in This Repo

Minimal, dependency-free skills you can copy straight into a project — also serve as format references:

- [`skills/skill-template`](skills/skill-template/SKILL.md) — copy-paste scaffold matching the official frontmatter spec.
- [`skills/conventional-commits`](skills/conventional-commits/SKILL.md) — makes the agent write Conventional Commits messages with the right type/scope.
- [`skills/pr-description`](skills/pr-description/SKILL.md) — generates reviewer-friendly PR descriptions from the branch diff.

## Installing Skills

Antigravity discovers skills from two locations ([docs](https://antigravity.google/docs/skills)):

| Location | Scope |
|---|---|
| `<workspace-root>/.agents/skills/<skill-folder>/` | Workspace-specific |
| `~/.gemini/config/skills/<skill-folder>/` | Global (all workspaces) |

> Note: Antigravity defaults to `.agents/skills` but keeps backward support for `.agent/skills`.

Install a skill from this repo into the current workspace:

```bash
mkdir -p .agents/skills
cp -r path/to/awesome-antigravity-skills/skills/conventional-commits .agents/skills/
```

Or install a whole collection with its own installer, e.g.:

```bash
npx antigravity-awesome-skills   # benjaminasterA's 889+ skill library
```

You normally don't need to invoke a skill explicitly — the agent activates it from the description. Mentioning the skill by name in your prompt forces it.

## Creating Your Own Skill

A skill is one folder with a `SKILL.md`. Frontmatter: `description` is **required** (it's how the agent decides relevance); `name` is optional and defaults to the folder name.

```
.agents/skills/my-skill/
├── SKILL.md       # Main instructions (required)
├── scripts/       # Helper scripts (optional)
├── examples/      # Reference implementations (optional)
└── resources/     # Templates and other assets (optional)
```

```markdown
---
name: my-skill
description: Helps with a specific task. Use when you need to do X or Y.
---

# My Skill

Detailed instructions for the agent go here.

## When to use this skill

- Use this when...

## How to use it

Step-by-step guidance, conventions, and patterns the agent should follow.
```

Best practices from the official docs:

- **Keep skills focused** — one skill, one job.
- **Write clear third-person descriptions** with keywords the agent can match on.
- **Use scripts as black boxes** — have the agent run `--help` instead of reading source.
- **Include decision trees** for complex skills.

## Related Lists

- [ZhangYu-zjut/awesome-Antigravity](https://github.com/ZhangYu-zjut/awesome-Antigravity) — Antigravity personas, mission-control templates, and troubleshooting guides (★ 146, Jul 2026).
- [skillmatic-ai/awesome-agent-skills](https://github.com/skillmatic-ai/awesome-agent-skills) — cross-vendor Agent Skills resource hub (★ 635, Jul 2026).
- [devtoolsd/awesome-devtools](https://github.com/devtoolsd/awesome-devtools) — broader developer-tools list including AI coding assistants (★ 669, Jul 2026).

## Contributing

Contributions welcome! Please read the [contribution guidelines](CONTRIBUTING.md) first. TL;DR: one link per PR, format `- [name](link) — description (★ count, month year).`, the skill must actually work in Antigravity, and no self-promotion without a working demo.

Data provenance for the current entries lives in [docs/research-notes.md](docs/research-notes.md).

## License

[CC0-1.0](LICENSE) — public domain. Do whatever you want with this list.

*This project is independent and not affiliated with Google. "Antigravity" and "Gemini" are trademarks of Google LLC.*
