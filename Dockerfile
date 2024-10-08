# Utilisez une image Node.js officielle comme image de base
FROM node:18 AS build

# Définissez le répertoire de travail
WORKDIR /app

# Copiez le package.json et package-lock.json
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste du code
COPY . .

# Construisez l'application
RUN npm run build

# Utilisez une image Nginx officielle pour servir l'application
FROM nginx:alpine

# Copiez les fichiers construits dans le répertoire de Nginx
COPY --from=build /app/dist /usr/share/nginx/html

# Exposez le port 80
EXPOSE 80

# Démarrez Nginx
CMD ["nginx", "-g", "daemon off;"]
