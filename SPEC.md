# SPEC — awesome-antigravity-skills

Task: Create an OSS awesome-list repo `awesome-antigravity-skills` at `~/ws/oss/awesome-antigravity-skills`, modeled after top-starred awesome lists (ComposioHQ/awesome-claude-skills, 67.9k★) and the existing antigravity ecosystem repos (benjaminasterA/antigravity-awesome-skills 58★, ZhangYu-zjut/awesome-Antigravity 146★), grounded in data scraped from GitHub + official Antigravity docs via Chrome MCP on 2026-07-16.

## Acceptance criteria (testable)

1. **README.md is a complete awesome list**: H1 title `Awesome Antigravity Skills`, one-line tagline, TOC, and at least these sections: What is Antigravity / What are Agent Skills / Official Resources / Skill Collections / Skills by Category (≥6 categories) / Installing Skills / Creating Your Own Skill / Contributing / License + trademark disclaimer.
   - Verify: `grep` for each H2; count category H3s ≥ 6.
2. **Technical accuracy against official docs** (antigravity.google/docs/skills, fetched 2026-07-16):
   - Workspace skills path documented as `<workspace-root>/.agents/skills/<skill-folder>/` (with `.agent/skills` backward-compat note).
   - Global skills path documented as `~/.gemini/config/skills/<skill-folder>/`.
   - SKILL.md template shows YAML frontmatter where `description` is required and `name` is optional (defaults to folder name).
   - Verify: read README section vs the quoted doc facts in `docs/research-notes.md`.
3. **Every listed external repo/link is real and verified**: all GitHub repos listed appear in `docs/research-notes.md` with star counts scraped on 2026-07-16, OR are verified by link check. No invented repos.
   - Verify: run `scripts/check-links.sh` → exit 0 (no 404s; non-200 tolerated only for rate-limit 429).
4. **Repo hygiene files**: `LICENSE` (CC0-1.0 full text), `CONTRIBUTING.md` (entry format `- [name](link) — description.` + PR steps + quality bar), `skills/skill-template/SKILL.md` (valid frontmatter, copy-paste scaffold).
   - Verify: files exist; frontmatter of skill-template parses (has `description:`).
5. **At least 2 original example skills** under `skills/` beyond the template, each a folder with valid SKILL.md (frontmatter + When to use + How to use), consistent with official format.
   - Verify: `ls skills/*/SKILL.md` count ≥ 3 (template + 2); each contains `description:`.
6. **Git initialized with clean initial commit**, Conventional Commits message, no junk files (`.DS_Store` etc. gitignored).
   - Verify: `git log --oneline` shows 1+ commit; `git status` clean.
7. **Provenance**: `docs/research-notes.md` records scrape date, source URLs, and raw star data used to build the list.
   - Verify: file exists, contains 2026-07-16 and ≥8 repos with star counts.

## Edge cases / hard problems addressed

- **Stale star counts**: counts are point-in-time; README stores them rounded ("★ 67.9k, Jul 2026") so drift is expected and labeled.
- **Trademark risk**: "Antigravity" and "Gemini" are Google trademarks — README must carry an independence disclaimer (pattern taken from ZhangYu-zjut/awesome-Antigravity).
- **Dead/renamed repos**: link check script is committed so future PRs can re-verify.
- **Scope**: this is a curated list + starter skills, NOT an installer/npm package (that's benjaminasterA's lane — we link to it rather than clone it).

## Out of scope

- Publishing to GitHub (done only on explicit request after PASS).
- npx installer, website, CI beyond a link-check workflow stub.
