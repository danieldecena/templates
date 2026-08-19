# Security Review Checklist

Supporting file bundled with the security-review skill.

<!-- ▼ REPLACE: tailor to your stack ▼ -->
## Input handling
- [ ] All user input validated and sanitized
- [ ] Parameterized queries (no string-concatenated SQL)
- [ ] Output encoded for its context (HTML, URL, JS)

## Auth
- [ ] Every protected route checks authentication
- [ ] Authorization checked per resource, not just per route
- [ ] Sessions/tokens expire and rotate

## Secrets
- [ ] No hardcoded keys, tokens, or passwords
- [ ] Secrets read from environment / vault
- [ ] No secrets in logs or error messages

## Dependencies
- [ ] No known-vulnerable packages
- [ ] Lockfile committed
<!-- ▲ REPLACE ▲ -->
