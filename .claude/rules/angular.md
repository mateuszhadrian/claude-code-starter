---
paths:
  - "**/*.component.ts"
  - "**/*.service.ts"
  - "**/*.directive.ts"
  - "**/*.pipe.ts"
  - "**/*.module.ts"
  - "**/*.guard.ts"
  - "**/*.resolver.ts"
  - "**/*.component.html"
---

# Angular conventions

- Standalone components, directives, and pipes by default; avoid NgModules in new code.
- Prefer Signals for local/component state; use `computed()` for derived state.
- Use RxJS for async streams and event handling, not for synchronous state.
- Use `inject()` over constructor injection in new code.
- `ChangeDetectionStrategy.OnPush` by default.
- Use the `input()` / `output()` / `model()` signal APIs instead of decorators.
- Typed reactive forms; avoid template-driven forms for non-trivial cases.
- Lazy-load feature routes with `loadComponent` / `loadChildren`.
- Keep components presentational; push business logic into services.
- Services are `providedIn: 'root'` unless they need narrower scope.
- Handle teardown explicitly: `takeUntilDestroyed()` or the `async` pipe — no manual `subscribe` without cleanup.
- Prefer the `async` pipe in templates over manual subscriptions.
- Use the new control flow (`@if`, `@for`, `@switch`) with a `track` expression on `@for`.
- Use `NgOptimizedImage` for static images.
- Keep templates dumb; no heavy logic or method calls in bindings.
