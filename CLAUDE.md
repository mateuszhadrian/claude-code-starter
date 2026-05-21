<!-- TODO: one-line description of this project -->

## Commands

<!-- TODO: confirm these match this project's package.json scripts -->
- Build: `npm run build`
- Test: `npm test`
- Lint: `npm run lint`
- Format: `npx prettier --write .`
- Dev: `npm run dev`

## Stack

<!-- TODO: framework + key libraries -->

## Conventions

- TypeScript strict mode is on; no implicit `any`.
- Prefer named exports over default exports.
- Keep functions small and single-responsibility.
- Co-locate tests with source (`foo.ts` -> `foo.spec.ts` / `foo.test.ts`).
- Never commit secrets or hardcoded credentials; read config from env.
- Run lint + format before committing.
- Prefer composition over inheritance.
- Handle errors explicitly; never silently swallow them.

## Where to look

Stack-specific conventions live in `.claude/rules/`. Reference docs and live library examples come from the Context7 MCP server.
