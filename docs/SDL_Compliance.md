# Secure Development Lifecycle (SDL) Compliance

This outlines how SDL is integrated throughout the design and development of the Azure Quote Platform.

## 1. Security Requirements
- Security is discussed during early architecture decisions.
- All APIs require authentication and role-based access.

## 2. Threat Modeling
- STRIDE threat modeling used for critical components.
- Risks reviewed during each planning iteration.

## 3. Secure Design
- Defense in depth: Authorization, validation, encryption.
- Uses Azure best practices and policies.

## 4. Secure Coding Guidelines
- No secrets in code: Key Vault used.
- Input validation enforced across all APIs.

## 5. Static Analysis & Testing
- GitHub Actions includes security scanning tools (e.g., CodeQL).
- Regular code reviews enforced before merges.

## 6. Incident Response Plan
- Audit logs in place for post-incident analysis.
- Azure Monitor and alerts track suspicious activity.
