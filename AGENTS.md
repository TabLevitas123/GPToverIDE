# Codex Agent Guide for GPToverIDE

## 1. Where to work
- Focus on code under `/app`, `/services`, and `/frontend`.
- Avoid modifying build scripts or CI configs unless explicitly asked.

## 2. Testing & Validation
- Run `pytest --maxfail=1 --disable-warnings -q` to verify Python logic.
- Use `pnpm exec vite build` and `pnpm test --ci` in each JS package.
- Lint: `flake8 app/ services/` and `pnpm exec eslint .` in root.

## 3. Formatting & Style
- Python: follow PEP8 via `black` and `isort`.
- JS: use `prettier --check` and `eslint --fix`.

## 4. PR Messaging
- Title: `[<module>] Brief summary of change`.
- Body: Explain the problem, your approach, and test results.

## 5. Step-by-Step Tasks
1. Install new dependencies via setup.sh.
2. Run smoke tests.
3. Implement feature/fix in small commits.
4. Add corresponding tests.
5. Update documentation if needed.

## 6. Split Large Tasks
- Break features into: core module → auxiliary modules → integration tests.
- Ask for separate reviews per module if changes are extensive.
