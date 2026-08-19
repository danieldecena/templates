---
paths:
  - "src/api/**/*.ts"
---

# API Design Rules

<!-- ▼ REPLACE: your API conventions ▼ -->
- All endpoints must validate input with Zod schemas
- Return shape: { data: T } | { error: string }
- Rate limit all public endpoints
<!-- ▲ REPLACE ▲ -->
