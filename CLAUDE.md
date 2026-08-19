# {{PROJECT_NAME}} - Project Constitution

{{PROJECT_DESC}}

## Commands
- Build: `{{BUILD_CMD}}`
- Test: `{{TEST_CMD}}`
- Lint: `{{LINT_CMD}}`

## Stack
- {{PRIMARY_LANGUAGE}} with strict mode
- Domain-driven active layer (`src/`) & Xcode/SwiftUI layer (`xcode_bridge/`)

## Rules
- Named exports, never default exports
- Tests: {{TEST_LAYOUT}}
- Local SQLite database in `data/storage.sqlite` is the single source of truth for local data storage.

<!-- OpenWolf context configuration and memory integration -->
