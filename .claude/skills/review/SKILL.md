---
name: review
description: Review code changes (or a given path/branch) for correctness, security, and maintainability. Use when reviewing a diff, a file, or recent work.
argument-hint: [path or branch; defaults to working changes]
---

## Working changes

!`git diff`

## Instructions

Review the target (`$ARGUMENTS`, default = current working changes shown above). If `$ARGUMENTS` names a path or branch, scope the review to it (e.g. `git diff <branch>...HEAD` or read the given file).

Evaluate three dimensions:

1. **Correctness** — logic errors, missed edge cases, null/undefined handling, off-by-one, race conditions, incorrect async/await.
2. **Security** — injection (SQL/command/XSS), authentication and authorization gaps, exposed secrets, unsafe or unvalidated input, unsafe deserialization.
3. **Maintainability** — naming, excessive complexity, duplication, dead code, leaky abstractions.

Report findings grouped by severity (Critical / High / Medium / Low). Every finding must include a **concrete suggested fix** and a specific `file:line` reference. If nothing is wrong in a category, say so briefly.
