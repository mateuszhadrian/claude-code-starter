---
paths:
  - "**/*.tsx"
  - "**/*.jsx"
  - "app/**/*.ts"
  - "pages/**/*.ts"
---

# React / Next.js conventions

- Function components with hooks only; no class components.
- Prefer the App Router over the Pages Router for new work.
- Server Components by default; add `"use client"` only when a component needs state, effects, or browser APIs.
- Keep data fetching on the server where possible; fetch close to where data is used.
- Colocate component, styles, and test in the same folder.
- Lift state minimally; prefer derived state over duplicated state.
- Type props explicitly; avoid `any` and implicit prop shapes.
- Use stable, meaningful keys in lists — never the array index for dynamic lists.
- Memoize deliberately (`useMemo` / `useCallback` / `memo`) where measured, not by default.
- Keep `useEffect` for true side effects; don't use it to derive or sync state.
- Co-locate Server Actions and keep mutations on the server.
- Use `next/image` and `next/font` for images and fonts.
- Handle loading and error states with `loading.tsx` / `error.tsx` boundaries.
- Keep components small and composable; extract hooks for reusable logic.
