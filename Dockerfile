# Dockerfile per sviluppo Node.js con immagine minimale
FROM node:alpine

# Imposta la directory di lavoro
WORKDIR /usr/src/app

# Copia i file package.json e package-lock.json
COPY package*.json ./

# Installa le dipendenze
RUN npm install

# Copia il resto dei file dell'applicazione
COPY . .

# Espone la porta 3000 (modificare se necessario)
EXPOSE 3000

# Comando di default (modificare se necessario)
CMD ["npm", "start"]
