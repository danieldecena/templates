---
name: Debugging patterns
description: Auth token rotation and database connection troubleshooting for this project
type: reference
---

<!-- AUTO-GENERATED topic file. Claude creates these when MEMORY.md grows
     too long, and reads them back when a related task comes up. -->

## Auth Token Issues
- Refresh token rotation: old token invalidated immediately
- If 401 after refresh: check clock skew between client and server

## Database Connection Drops
- Connection pool: max 10 in dev, 50 in prod
- Always check `docker compose ps` first
