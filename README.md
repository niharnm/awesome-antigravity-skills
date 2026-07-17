# Awesome Antigravity Skills [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of awesome Agent Skills, skill collections, and resources for Google Antigravity, the agent-first IDE powered by Gemini 3.

Antigravity adopted the open Agent Skills standard: a skill is just a folder with a `SKILL.md` file that teaches the agent how to do a specific task well. That means most skills written for Claude Code, Cursor, or Codex CLI work in Antigravity too, and this list embraces that overlap.

Star counts are point-in-time snapshots (July 2026) and will drift.

## Contents

- [About Antigravity](#about-antigravity)
- [About Agent Skills](#about-agent-skills)
- [Official Resources](#official-resources)
- [Skill Collections](#skill-collections)
- [Skills by Category](#skills-by-category)
	- [Development and Code Quality](#development-and-code-quality)
	- [Design and Frontend](#design-and-frontend)
	- [Science and Data](#science-and-data)
	- [Game Development](#game-development)
	- [Context and Memory](#context-and-memory)
	- [Workflow and Process](#workflow-and-process)
- [Starter Skills in This Repo](#starter-skills-in-this-repo)
- [Installing Skills](#installing-skills)
- [Creating Your Own Skill](#creating-your-own-skill)

## About Antigravity

Google Antigravity is Google's agent-first IDE built around Gemini 3. Instead of autocompleting syntax, you orchestrate agents that plan, execute, and verify multi-step coding missions. The platform spans the Antigravity IDE, the Antigravity CLI, and the Antigravity SDK.

## About Agent Skills

From the official skills documentation (see the Official Resources section):

> Skills are an open standard for extending agent capabilities. A skill is a folder containing a `SKILL.md` file with instructions that the agent can follow when working on specific tasks.

Skills follow a progressive disclosure pattern: **discovery** (at conversation start the agent sees skill names and descriptions), then **activation** (if a skill looks relevant, the agent reads the full `SKILL.md`), then **execution** (the agent follows the instructions while working).

Because the format is an open standard shared with Claude Code, Cursor, Codex CLI, Gemini CLI, and others, the skill ecosystems are largely interoperable.

## Official Resources

- [Antigravity](https://antigravity.google) - Product home and download.
- [Antigravity Documentation](https://antigravity.google/docs) - IDE, CLI, SDK, and migration guides.
- [Agent Skills docs](https://antigravity.google/docs/skills) - The authoritative skill format reference covering locations, frontmatter, and best practices.

## Skill Collections

Large multi-skill libraries that install into Antigravity and other agents:

- [antigravity-awesome-skills](https://github.com/benjaminasterA/antigravity-awesome-skills) - The largest Antigravity-branded collection with 889+ universal skills, a one-command installer, and curated bundles per role (★ 58, Jul 2026).
- [agentic-awesome-skills](https://github.com/sickn33/agentic-awesome-skills) - Installable library of 1,900+ agentic skills for Claude Code, Cursor, Codex CLI, Gemini CLI, Antigravity, and more (★ 43.4k, Jul 2026).
- [agent-skills by Addy Osmani](https://github.com/addyosmani/agent-skills) - Production-grade engineering skills for AI coding agents, tagged for Antigravity compatibility (★ 78.8k, Jul 2026).
- [agent-skills by Tech Leads Club](https://github.com/tech-leads-club/agent-skills) - Secure, validated skill registry with a quality gate for professional agents (★ 4.9k, Jul 2026).
- [awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) - The highest-starred skills list in the ecosystem, Claude-flavored but the SKILL.md format carries over (★ 67.9k, Jul 2026).
- [awesome-skills-cn](https://github.com/lingxling/awesome-skills-cn) - Chinese-community aggregation of 7,000+ skills with tutorials in Chinese (★ 187, Jul 2026).

## Skills by Category

Curated picks: individual skills or focused libraries worth installing on their own.

### Development and Code Quality

- [Graphify](https://github.com/Graphify-Labs/graphify) - Turns any codebase, SQL schema, or script folder into a knowledge graph the agent can query (★ 89.2k, Jul 2026).
- [cc-sdd](https://github.com/gotalab/cc-sdd) - Spec-driven development harness that turns approved specs into long-running autonomous implementation (★ 3.6k, Jul 2026).

### Design and Frontend

- [ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) - Design intelligence for building professional UI/UX across platforms, the single most-starred skill repo on GitHub (★ 107k, Jul 2026).
- [stitch-skills](https://github.com/google-labs-code/stitch-skills) - Google Labs' design-to-code Agent Skills that pair with the Stitch MCP server (★ 7.5k, Jul 2026).

### Science and Data

- [scientific-agent-skills](https://github.com/K-Dense-AI/scientific-agent-skills) - 148 ready-to-use skills that turn any agent into an AI scientist for bioinformatics, genomics, and scientific visualization (★ 31k, Jul 2026).

### Game Development

- [awesome-gamedev-agent-skills](https://github.com/gamedev-skills/awesome-gamedev-agent-skills) - 66 game-dev skills with a master router that loads the right skill for your engine (★ 288, Jul 2026).

### Context and Memory

- [context-mode](https://github.com/mksglu/context-mode) - Context-window optimization that sandboxes tool output, persists session memory, and enforces routing (★ 19k, Jul 2026).

### Workflow and Process

- [awesome-agv](https://github.com/irahardianto/awesome-agv) - Coding standards and best-practice packs designed to elevate agent output (★ 150, Jul 2026).

## Starter Skills in This Repo

Minimal, dependency-free skills you can copy straight into a project. They double as format references.

**skill-template** (`skills/skill-template/SKILL.md`) is a copy-paste scaffold matching the official frontmatter spec. **conventional-commits** (`skills/conventional-commits/SKILL.md`) makes the agent write Conventional Commits messages with the right type and scope. **pr-description** (`skills/pr-description/SKILL.md`) generates reviewer-friendly PR descriptions from the branch diff.

## Installing Skills

Antigravity discovers skills from two locations (see the Agent Skills docs in the Official Resources section): `<workspace-root>/.agents/skills/<skill-folder>/` for workspace-specific skills, and `~/.gemini/config/skills/<skill-folder>/` for global skills available in all workspaces. Antigravity defaults to `.agents/skills` but keeps backward support for `.agent/skills`.

Install a skill from this repo into the current workspace:

```bash
mkdir -p .agents/skills
cp -r path/to/awesome-antigravity-skills/skills/conventional-commits .agents/skills/
```

Collections often ship their own installer, for example `npx antigravity-awesome-skills`. Note that this particular installer writes to `~/.gemini/antigravity/skills` by default, which is not one of the two discovery paths above; pass its `--path` flag to target `~/.gemini/config/skills` or your workspace `.agents/skills` instead.

You normally don't need to invoke a skill explicitly. The agent activates it from the description, and mentioning the skill by name in your prompt forces it.

## Creating Your Own Skill

A skill is one folder with a `SKILL.md`. In the frontmatter, `description` is required (it's how the agent decides relevance) and `name` is optional, defaulting to the folder name.

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

Best practices from the official docs: keep skills focused (one skill, one job), write clear third-person descriptions with keywords the agent can match on, treat scripts as black boxes (have the agent run `--help` instead of reading source), and include decision trees in complex skills.

## Related Lists

- [awesome-Antigravity](https://github.com/ZhangYu-zjut/awesome-Antigravity) - Antigravity personas, mission-control templates, and troubleshooting guides (★ 146, Jul 2026).
- [awesome-agent-skills](https://github.com/skillmatic-ai/awesome-agent-skills) - Cross-vendor Agent Skills resource hub (★ 635, Jul 2026).
- [awesome-devtools](https://github.com/devtoolsd/awesome-devtools) - Broader developer-tools list including AI coding assistants (★ 669, Jul 2026).

## Contributing

Contributions welcome! Please read the [contribution guidelines](CONTRIBUTING.md) first. One link per PR, the skill must actually work in Antigravity, and no self-promotion without a working demo. Data provenance for the current entries lives in [docs/research-notes.md](docs/research-notes.md).

This project is released under [CC0-1.0](LICENSE). It is independent and not affiliated with Google. "Antigravity" and "Gemini" are trademarks of Google LLC.
