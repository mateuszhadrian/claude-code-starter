---
name: pr
description: Prepare and open a pull request: summarize the diff vs the base branch and draft a structured PR description. Trigger manually with /pr.
disable-model-invocation: true
argument-hint: [base branch; defaults to main]
---

## Current branch

- Branch: !`git branch --show-current`
- Status: !`git status --short`

## Instructions

The base branch is `$ARGUMENTS` (default: `main`).

1. Run `git log <base>..HEAD --oneline` and `git diff <base>...HEAD` to understand the full change set.
2. Draft a pull request with:
   - A **Conventional-Commit-style title** (e.g. `feat: add user export`).
   - A body with these sections:
     - `## Summary` — what this PR does, in a sentence or two.
     - `## Motivation` — why the change is needed.
     - `## Changes` — bullet list of notable changes.
     - `## How to test` — concrete steps to verify.
3. If GitHub CLI (`gh`) is available, run `gh pr create` with the drafted title and body. Otherwise, print the title and body for the user to paste.

Never run `git push --force`.
