# Template Project

Un template di progetto Node.js con ESM, linting, testing, Docker e rilascio automatico.

## Funzionalità

- **ESM** — `"type": "module"` con Node.js >= 22
- **Conventional Commits** — validazione con Husky + commitlint
- **Linting** — ESLint (flat config) + Prettier + lint-staged (pre-commit)
- **Testing** — Jest con supporto ESM
- **Release** — release-it con generazione automatica di CHANGELOG
- **Docker** — multi-stage build, utente non-root, health check
- **CI/CD** — GitHub Actions (lint, format, test) + Dependabot
- **DX** — `.editorconfig`, `.nvmrc`, VS Code settings

## Quick start

```bash
git clone https://github.com/Edo78/nodejs-template.git
cd nodejs-template
npm install
```

## Script disponibili

| Comando | Descrizione |
|---|---|
| `npm start` | Avvia l'applicazione |
| `npm test` | Esegue i test |
| `npm run test:watch` | Test in modalità watch |
| `npm run test:coverage` | Test con copertura |
| `npm run lint` | Controlla il codice con ESLint |
| `npm run lint:fix` | Corregge automaticamente gli errori ESLint |
| `npm run format` | Formatta il codice con Prettier |
| `npm run format:check` | Verifica la formattazione |
| `npm run release` | Crea una nuova release |

## Conventional commits

I messaggi di commit devono seguire il formato [Conventional Commits](https://www.conventionalcommits.org/):

- `feat:` — nuova funzionalità (incrementa minor)
- `fix:` — correzione bug (incrementa patch)
- `docs:` — aggiornamento documentazione
- `style:` — modifiche al formato (non funzionali)
- `refactor:` — refactoring del codice
- `test:` — aggiunta o modifica di test
- `chore:` — modifiche di configurazione, build, ecc.
- `ci:` — modifiche alla configurazione CI

## Rilascio

```bash
npm run release              # Auto-detect dal tipo di commit
npm run release -- minor     # Forza minor (0.1.0 -> 0.2.0)
npm run release -- major     # Forza major (0.2.0 -> 1.0.0)
npm run release -- patch     # Forza patch (0.2.0 -> 0.2.1)
npm run release -- --preRelease=beta  # Pre-release
```

## Docker

```bash
docker build -t nodejs-template .
docker run -p 3000:3000 nodejs-template
```

## Struttura del progetto

```
├── .github/          # GitHub Actions CI + Dependabot
├── .husky/           # Git hooks (commit-msg, pre-commit)
├── .vscode/          # Estensioni e impostazioni raccomandate
├── src/              # Codice sorgente
│   └── index.js      # Entry point
├── tests/            # Test
│   └── index.test.js
├── .editorconfig     # Regole di stile per editor
├── .env.example      # Variabili d'ambiente di esempio
├── .prettierrc       # Configurazione Prettier
├── eslint.config.js  # Configurazione ESLint (flat config)
├── jest.config.js    # Configurazione Jest
├── Dockerfile        # Multi-stage build
└── package.json
```

## License

[MIT](LICENSE)
