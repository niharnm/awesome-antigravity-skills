# SPEC — awesome-antigravity-skills

Task: Create an OSS awesome-list repo `awesome-antigravity-skills` at `~/ws/oss/awesome-antigravity-skills`, modeled after top-starred awesome lists (ComposioHQ/awesome-claude-skills, 67.9k★) and the existing antigravity ecosystem repos (benjaminasterA/antigravity-awesome-skills 58★, ZhangYu-zjut/awesome-Antigravity 146★), grounded in data scraped from GitHub + official Antigravity docs via Chrome MCP on 2026-07-16.

## Acceptance criteria (testable)

1. **README.md is a complete awesome list**: H1 title `Awesome Antigravity Skills`, one-line tagline (a single `> ...` blockquote line under the H1), TOC, and at least these H2 sections: About Antigravity / About Agent Skills / Official Resources / Skill Collections / Skills by Category (≥6 category H3s) / Starter Skills in This Repo / Installing Skills / Creating Your Own Skill / Related Lists / Contributing.
   - License handling: README must contain a CC0 license statement linking to the LICENSE file **and** a Google trademark disclaimer, but NOT as a standalone `## License` heading (the awesome-lint `awesome-license` rule forbids a License section; the statement lives inside the Contributing section).
   - TOC completeness: the TOC lists exactly the H2 sections above EXCEPT those the awesome-lint `awesome-toc` rule forbids (observed empirically: "Related Lists" and "Contributing" are rejected by the rule and must be omitted from the TOC while remaining as sections).
   - Verify: `grep '^## '` for each H2; count category H3s ≥ 6; `npx awesome-lint` raises no toc/license errors.
2. **Technical accuracy against official docs** (antigravity.google/docs/skills):
   - Workspace skills path documented as `<workspace-root>/.agents/skills/<skill-folder>/` (with `.agent/skills` backward-compat note).
   - Global skills path documented as `~/.gemini/config/skills/<skill-folder>/`.
   - SKILL.md template shows YAML frontmatter where `description` is required and `name` is optional (defaults to folder name).
   - Verify: **re-fetch the live official docs page** (or an archived snapshot of it) and compare each claim against the README. Do NOT verify against `docs/research-notes.md` alone — it was written by the same author as the README and would be circular.
3. **Every listed external repo/link is real and verified**: all GitHub repos listed appear in `docs/research-notes.md` with star counts scraped on 2026-07-16, AND are verified by link check. No invented repos.
   - Verify: run `scripts/check-links.sh` → exit 0. Any 4xx/5xx fails except 429 (rate limit). GitHub repo URLs are checked without following redirects so renamed/moved repos surface as failures.
3b. **awesome-lint clean**: README carries the awesome badge, so it must earn it.
   - Verify: `npx awesome-lint` on the repo → 0 errors, with one documented exception: the `awesome-github` rule ("must reside in a valid git repository") cannot pass until the repo actually exists on GitHub; it is expected to clear on publish and is the ONLY tolerated error before then.
4. **Repo hygiene files**: `LICENSE` (CC0-1.0 full text), `CONTRIBUTING.md` (entry format `- [name](link) - Description (★ count, month year).` with hyphen separator per awesome-lint, + PR steps + quality bar), `skills/skill-template/SKILL.md` (valid frontmatter, copy-paste scaffold).
   - Verify: files exist; frontmatter of skill-template parses (has `description:`).
5. **At least 2 original example skills** under `skills/` beyond the template, each a folder with valid SKILL.md (frontmatter + When to use + How to use), consistent with official format.
   - Verify: `ls skills/*/SKILL.md` count ≥ 3 (template + 2); each contains `description:`.
6. **Git initialized with clean commits**, Conventional Commits messages, no junk files (`.DS_Store` etc. gitignored).
   - Verify: `git log --oneline` shows 1+ commit; `git status` clean.
6b. **CI stub**: `.github/workflows/link-check.yml` exists and runs `scripts/check-links.sh` on PR + weekly schedule.
   - Verify: file exists and references the script.
7. **Provenance**: `docs/research-notes.md` records scrape date, source URLs, and raw star data used to build the list.
   - Verify: file exists, contains 2026-07-16 and ≥8 repos with star counts.

## Edge cases / hard problems addressed

- **Stale star counts**: counts are point-in-time; README stores them rounded ("★ 67.9k, Jul 2026") so drift is expected and labeled.
- **Trademark risk**: "Antigravity" and "Gemini" are Google trademarks — README must carry an independence disclaimer (pattern common to community Antigravity projects).
- **Dead repos**: link check fails on 4xx/5xx. **Renamed/moved repos**: GitHub URLs are checked without following redirects, so a 301 fails the check and forces an entry update.
- **Zero-link README**: the link checker errors out loudly instead of silently passing/failing.
- **Duplicate links**: each external URL appears at most once in README (awesome-lint `double-link` rule); cross-references use section anchors instead.
- **Scope**: this is a curated list + starter skills, NOT an installer/npm package — installers already exist in the ecosystem and are linked instead.

## Out of scope

- Publishing to GitHub (done only on explicit request after PASS).
- npx installer, website, or any CI beyond the link-check workflow in acceptance 6b.
