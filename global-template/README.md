# Global (~/) template

Personal Claude config that applies to **every** project. These files live
in your home directory, never in a repo. To use this template, copy its
contents into your real home:

```bash
# Review first — this is your live global config.
cp -R global-template/.claude/. ~/.claude/
cp global-template/.claude.json ~/.claude.json   # only if you don't have one
```

⚠️ `~/.claude/` and `~/.claude.json` usually already exist. Merge by hand
rather than overwriting — you'll lose your theme, OAuth session, trust
decisions, and MCP servers otherwise.

## What's here
| Path | Purpose | You edit? |
|------|---------|-----------|
| `.claude.json` | App state: theme, OAuth, trust, personal MCP servers | Mostly via `/config` |
| `.claude/CLAUDE.md` | Preferences loaded in every project | Yes |
| `.claude/settings.json` | Default settings (project settings override) | Yes |
| `.claude/keybindings.json` | Custom CLI shortcuts (`/keybindings`) | Yes |
| `.claude/themes/*.json` | Custom color themes (`/theme`) | Yes |
| `.claude/projects/<project>/memory/` | Auto memory — Claude writes these | No (autogen) |
| `.claude/rules/*.md` | Personal rules across all projects | Yes |
| `.claude/skills/<name>/` | Personal skills, invoked `/name` | Yes |
| `.claude/commands/*.md` | Personal single-file `/name` commands | Yes |
| `.claude/output-styles/*.md` | System-prompt styles (e.g. teaching) | Yes |
| `.claude/agents/*.md` | Personal subagents | Yes |
| `.claude/workflows/*.js` | Personal workflows (saved from `/workflows`) | Claude writes |
| `.claude/agent-memory/` | Memory for `memory: user` subagents | No (autogen) |

Precedence: `settings.json` merges key-by-key (project wins). CLAUDE.md
files are both loaded (project wins on conflict). skills/commands/styles/
workflows with the same name: project wins.
