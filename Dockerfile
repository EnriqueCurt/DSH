# Imagen base de Node
FROM node:18-alpine

# Carpeta de la app dentro del contenedor
WORKDIR /app

# Copiamos package.json y package-lock.json
COPY package*.json ./

# Instalamos dependencias
RUN npm install --only=production

# Copiamos todo el código
COPY . .

# Puerto expuesto (cambia si tu app usa otro)
EXPOSE 3000

# Comando de inicio
CMD ["npm", "start"]
