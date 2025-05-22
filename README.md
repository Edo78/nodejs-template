# Template Project

Un template di progetto Node.js con configurazione git, husky, commitlint e release-it.

## Funzionalità

- Repository git inizializzato
- Configurazione npm
- Validazione dei messaggi di commit con formato conventional commit
- Generazione automatica di CHANGELOG.md
- Gestione automatica delle versioni
- Configurazione Docker per sviluppo

## Come usare

### Sviluppo

1. Clona il repository
2. Installa le dipendenze: `npm install`
3. Sviluppa la tua applicazione
4. Fai commit usando il formato conventional commit: 
   - `feat: nuova funzionalità`
   - `fix: correzione bug`
   - `docs: aggiornamento documentazione`
   - `style: modifiche al formato (non funzionali)`
   - `refactor: refactoring del codice`
   - `test: aggiunta o modifica di test`
   - `chore: modifiche di configurazione, build, ecc.`

### Rilascio di una versione

Per rilasciare una nuova versione:

```bash
npm run release
```

Questo comando:
1. Determina automaticamente il tipo di incremento della versione in base ai commit
2. Aggiorna il file package.json con la nuova versione
3. Genera/aggiorna il file CHANGELOG.md
4. Crea un commit con i file modificati
5. Crea un tag git per la versione

### Opzioni di rilascio

Per specificare manualmente il tipo di incremento:

```bash
npm run release -- major  # Incremento major (1.0.0 -> 2.0.0)
npm run release -- minor  # Incremento minor (1.0.0 -> 1.1.0)
npm run release -- patch  # Incremento patch (1.0.0 -> 1.0.1)
```

Per una versione specifica:

```bash
npm run release -- 2.0.0
```

Per una versione pre-release:

```bash
npm run release -- --preRelease=beta
```
