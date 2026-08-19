---
paths:
  - "**/*.test.*"
  - "**/*.spec.*"
  - "**/test_*.py"
  - "**/*_test.py"
  - "**/*_test.go"
  - "**/tests/**"
---

# Testing Rules

<!-- ▼ REPLACE: keep the Layout row for your language, delete the rest ▼ -->
## Layout (where tests live)
| Language | Convention |
|----------|------------|
| Python (pytest) | separate `tests/` at root, files `test_*.py` |
| TypeScript/JS (vitest/jest) | co-located `foo.ts` → `foo.test.ts`, or `__tests__/` |
| Go | `*_test.go` next to source (toolchain-enforced) |
| Rust | `tests/` for integration + inline `#[cfg(test)]` for unit |

## Conventions
- Use descriptive test names: "should [expected] when [condition]"
- Mock external dependencies, not internal modules
- Clean up side effects after each test
<!-- ▲ REPLACE ▲ -->
