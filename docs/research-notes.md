# Research Notes — data provenance

All data below was collected on **2026-07-16** by driving Chrome (chrome-devtools MCP) against live GitHub search results and the official Antigravity documentation. Star counts are point-in-time and will drift.

## Source 1 — GitHub repo search `antigravity skills` (sort: stars desc)

| Repo | Stars (2026-07-16) | Description (excerpt) |
|---|---|---|
| nextlevelbuilder/ui-ux-pro-max-skill | 107k | AI skill providing design intelligence for professional UI/UX |
| Graphify-Labs/graphify | 89.2k | AI coding assistant skill (Claude Code, Codex, OpenCode, Cursor, Gemini CLI…) — code knowledge graph |
| addyosmani/agent-skills | 78.8k | Production-grade engineering skills for AI coding agents (topics incl. `antigravity`) |
| ComposioHQ/awesome-claude-skills | 67.9k | Curated list of awesome Claude Skills, resources and tools |
| sickn33/agentic-awesome-skills | 43.4k | Installable library of 1,900+ agentic skills for Claude Code, Cursor, Codex CLI, Gemini CLI, Antigravity… |
| K-Dense-AI/scientific-agent-skills | 31k | #1 Agent Skills library for science, 148 ready-to-use skills |
| mksglu/context-mode | 19k | Context window optimization for AI coding agents |
| google-labs-code/stitch-skills | 7.5k | Agent Skills for the Stitch MCP server; follows the Agent Skills open standard |
| tech-leads-club/agent-skills | 4.9k | Secure, validated skill registry — extends Antigravity, Claude Code, Cursor, Copilot |
| gotalab/cc-sdd | 3.6k | Spec-driven development harness with Agent Skills |

## Source 2 — GitHub repo search `awesome antigravity` (sort: stars desc)

| Repo | Stars (2026-07-16) | Description (excerpt) |
|---|---|---|
| devtoolsd/awesome-devtools | 669 | Curated list of developer tools incl. AI coding assistants |
| skillmatic-ai/awesome-agent-skills | 635 | "The definitive resource for Agent Skills" |
| gamedev-skills/awesome-gamedev-agent-skills | 288 | 66 game-dev Agent Skills with a master router |
| lingxling/awesome-skills-cn | 187 | 中文 skills 合集 7000+，聚合多个热门 skill 库 |
| irahardianto/awesome-agv | 150 | Standards & practices for AI coding agents |
| ZhangYu-zjut/awesome-Antigravity | 146 | Guide to Google Antigravity: personas, mission templates, troubleshooting |
| benjaminasterA/antigravity-awesome-skills | 58 | 889+ universal agentic skills, npx installer, bundles (the repo this project was benchmarked against) |

## Source 3 — Reference repo structures (scraped README/file-tree)

### ComposioHQ/awesome-claude-skills (67.9k★) — gold-standard awesome list
- H2 sections: Quickstart / Contents / What Are Claude Skills? / Skills (10 category H3s: Document Processing, Development & Code Tools, Data & Analysis, Business & Marketing, Communication & Writing, Creative & Media, Productivity & Organization, Collaboration & Project Management, Security & Systems, Assistive Technology) / Getting Started / Creating Skills / Contributing / Resources / Join the Community / License
- Repo also hosts ~30 actual skill folders + CONTRIBUTING.md.

### benjaminasterA/antigravity-awesome-skills (58★) — the named benchmark
- 889+ skills, npx installer (`npx antigravity-awesome-skills`), installs to `~/.gemini/antigravity/skills` by default, bundles in docs/BUNDLES.md, CATALOG.md, CHANGELOG.md, SECURITY.md, skills_index.json.
- Positioning: universal SKILL.md format across Claude Code / Gemini CLI / Codex / Antigravity IDE / Copilot / Cursor / OpenCode.

### ZhangYu-zjut/awesome-Antigravity (146★)
- Not a skills list — personas / mission-control templates / troubleshooting; funnels to awesome-antigravity.com. Carries a Google-trademark disclaimer (pattern reused here).

## Source 4 — Official docs: antigravity.google/docs/skills (fetched 2026-07-16)

Quoted facts used in README:

- "Skills are an open standard for extending agent capabilities. A skill is a folder containing a SKILL.md file."
- Locations table:
  - `<workspace-root>/.agents/skills/<skill-folder>/` — workspace-specific
  - `~/.gemini/config/skills/<skill-folder>/` — global (all workspaces)
  - "Antigravity now defaults to `.agents/skills`, but still maintains backward support for `.agent/skills`."
- Frontmatter fields: `name` — **not required** (defaults to folder name); `description` — **required** ("what the agent sees when deciding whether to apply the skill").
- Progressive disclosure: Discovery → Activation → Execution.
- Best practices: keep skills focused; clear third-person descriptions; use scripts as black boxes (`--help` first); include decision trees for complex skills.
- Docs nav confirms product surfaces: Antigravity 2.0, Antigravity CLI, Antigravity SDK, Antigravity IDE.
