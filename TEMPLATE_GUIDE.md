# Template Project — Map & Replace Guide

Duplicate this folder to start a new project, then work through the
placeholders below. Every replaceable value uses a `{{TOKEN}}` so you
(or Claude) can find-and-replace across the whole tree in one pass.

## How to use
1. Copy this folder to your new project location.
2. Replace the global tokens (find-and-replace, all files):
   - `{{PROJECT_NAME}}` — human name of the project
   - `{{PROJECT_DESC}}` — one-line description
   - `{{PRIMARY_LANGUAGE}}` — e.g. TypeScript, Python, Go
   - `{{TEST_LAYOUT}}` — where tests live; derive from `{{PRIMARY_LANGUAGE}}` via `.claude/rules/testing.md`
   - `{{BUILD_CMD}}`, `{{TEST_CMD}}`, `{{LINT_CMD}}`
3. Delete any file or folder you don't need (see table).
4. Delete this guide when you're done.

## File map
| Path | Purpose | Loads when |
|------|---------|------------|
| `CLAUDE.md` | Project conventions Claude reads every session | Session start |
| `.mcp.json` | Team-shared MCP servers | Session start |
| `.worktreeinclude` | Gitignored files to copy into new worktrees | On worktree create |
| `.claude/settings.json` | Permissions, hooks, model (enforced) | Session start |
| `.claude/settings.local.json` | Your personal overrides (gitignored) | Session start |
| `.claude/rules/*.md` | Topic-scoped instructions, optionally path-gated | When a matching file is read |
| `.claude/skills/<name>/SKILL.md` | Reusable prompts invoked by `/name` | On invoke |
| `.claude/commands/*.md` | Single-file `/name` prompts (legacy of skills) | On invoke |
| `.claude/agents/*.md` | Subagents with their own context window | When spawned / @-mentioned |
| `.claude/output-styles/*.md` | Shared output styles | When selected |
| `.claude/workflows/*.js` | Multi-subagent workflow scripts | At startup |
| `.claude/agent-memory/` | Subagent persistent memory (Claude writes) | Per subagent run |

## Replace-a-section convention
Inside files, blocks you should edit are wrapped like:
```
<!-- ▼ REPLACE: short instruction ▼ -->
...content to swap...
<!-- ▲ REPLACE ▲ -->
```
Search for `REPLACE:` to jump between every editable block.

## Worktree settings (parallel sessions)
- `.claude/settings.json` → `worktree.baseRef`: `"fresh"` (default) branches new
  worktrees from `origin/HEAD`; switch to `"head"` to carry your unpushed commits.
- `.claude/hooks.worktree.example.json`: non-git VCS only (SVN/Perforce/Mercurial).
  Merge its `hooks` block into settings.json; otherwise delete it.
- `.gitignore` already ignores `.claude/worktrees/`.
