# Verwenden des offiziellen Node.js-Images als Basis-Image
FROM node:14

# Arbeitsverzeichnis im Container festlegen
WORKDIR /usr/src/app

# Paketdefinitionen kopieren und Abhängigkeiten installieren
COPY package*.json ./

RUN npm install

# Anwendungsdateien kopieren
COPY . .

# Port für die Anwendung freigeben
EXPOSE 3000

# Umgebungsvariablen für die Anwendung konfigurieren (optional)
ENV NODE_ENV=production

# Startbefehl für die Anwendung
CMD ["node", "index.js"]
