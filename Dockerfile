# Usar imagen base de Node.js (compatible con Strapi)
FROM node:18

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar todo el contenido del proyecto al contenedor
COPY . /app/.

# Instalar dependencias basadas en package.json y package-lock.json
RUN npm install

# Construir la aplicación Strapi para producción
RUN npm run build

# Expón el puerto por defecto de Strapi (1337)
EXPOSE 1337

# Comando para ejecutar tu aplicación Strapi
CMD ["npm", "run", "start"]
