---
name: commit
description: Create well-formed git commit(s) from current changes using Conventional Commits. Trigger manually with /commit.
disable-model-invocation: true
argument-hint: [optional scope or hint]
---

## Current state

- Status: !`git status --short`
- Staged diff: !`git diff --staged`
- Unstaged diff: !`git diff`

## Instructions

Create one or more git commits from the current changes.

- Group related changes into logical, self-contained commits — don't lump unrelated work together.
- Write [Conventional Commits](https://www.conventionalcommits.org/) messages using one of: `feat`, `fix`, `refactor`, `chore`, `docs`, `test`, `style`, `perf`, `build`, `ci`.
- Subject line: imperative mood, under ~72 characters, no trailing period.
- Add a body explaining the **why** when the change is non-trivial; skip it for obvious one-liners.
- Stage the relevant changes and create the commit(s). If nothing is staged, decide a sensible staging from the diff above.
- Never commit secrets, credentials, or unrelated changes.
- Use `$ARGUMENTS` as an optional scope or hint for the commit message(s).
