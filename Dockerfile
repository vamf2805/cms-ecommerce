# Instalar dependencias
RUN npm install

# Exponer el puerto por defecto de Strapi
EXPOSE 1337

# Comando para ejecutar Strapi
CMD ["npm", "run", "start"]