---
name: test
description: Write and/or run tests for a target file or the whole suite, auto-detecting the project's test framework. Use when adding tests or fixing failing tests.
argument-hint: [path to file or test; optional]
---

## Instructions

1. **Detect the framework first.** Inspect `package.json` (scripts and devDependencies) and config files to determine the test runner — Vitest, Jest, Jasmine/Karma (Angular), or Playwright (E2E). Do not assume.

2. **If a target is given** (`$ARGUMENTS`): write or extend its colocated test file (`foo.ts` -> `foo.spec.ts` / `foo.test.ts`), then run only that test and iterate until it passes.

3. **If no target is given:** run the full suite, triage the failures, and propose or apply fixes.

Match the project's existing test style, naming, and assertion library. Stay framework-agnostic — do not impose a testing methodology the project doesn't already use.
