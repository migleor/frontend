# Imagen base
FROM node:14-alpine

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos de la aplicación al contenedor
COPY package*.json ./
COPY . .

# Instalar dependencias
RUN npm install 

# Construye la aplicación React
RUN npm run build

# Establece las variables de entorno
ENV PORT=3000
ENV HOST=0.0.0.0

# Exponer el puerto
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
