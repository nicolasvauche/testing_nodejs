# Utiliser l'image officielle de Node.js
FROM node

# Créer et définir le répertoire de travail
WORKDIR /usr/src/app

# Copier les fichiers package.json et package-lock.json (si disponible)
COPY . .

# Installer les dépendances de l'application
RUN npm install

# Installer nodemon globalement
RUN npm install -g nodemon

# Exposer le port que l'application va utiliser
EXPOSE 3000

# Définir la commande de démarrage de l'application
CMD ["npm", "start"]