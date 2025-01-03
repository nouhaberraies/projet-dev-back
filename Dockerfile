# Utiliser l'image officielle Node.js comme image de base
FROM node:18

# Créer et définir le répertoire de travail
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application dans le conteneur
COPY . .

# Exposer le port sur lequel l'application backend va écouter (par défaut 5000)
EXPOSE 5000

# Démarrer l'application backend
CMD ["node", "server.js"]
