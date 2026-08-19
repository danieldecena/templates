# Monorepo folder template applied to this project

```
my-monorepo/
├── .agents/
│   ├── AGENTS.md                # Project‑scoped agent rules
│   ├── skills.json              # Skill registry
│   └── skills/
│       ├── safari_debug/
│       │   └── SKILL.md
│       └── sql_auditor/
│           └── SKILL.md
├── .github/
│   └── workflows/
│       └── ci.yml            # CI pipeline (macOS, Playwright, tests)
├── config/
│   └── mcp/
│       └── default.json       # Always‑on MCP tools
├── src/
│   └── shared_lib/
│       └── browser_bridge/
│           ├── __init__.py
│           └── playwright_helper.py
├── tests/
│   ├── conftest.py            # Async DB & MCP fixtures
│   ├── unit/
│   │   └── __init__.py
│   ├── integration/
│   │   └── __init__.py
│   ├── e2e/
│   │   └── browser/
│   │       └── playwright_test.py
│   └── ai_evals/               # (placeholder for AI/LLM tests)
└── ... (existing project files)
```

The structure adds:
- **Shared test fixtures** (`tests/conftest.py`).
- **Granular test categories** (`unit`, `integration`, `e2e/browser`).
- **Browser‑bridge helpers** for Playwright/WebKit.
- **Agent auto‑discovery** (`.agents/` with `AGENTS.md` and skill registry).
- **MCP modular config** (`config/mcp/default.json`).
- **CI workflow** (`.github/workflows/ci.yml`).

You can now add further tests under `tests/ai_evals/` or expand the skill set under `.agents/skills/`.
