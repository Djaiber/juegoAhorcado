FROM nginx:alpine

# Borra el contenido default de nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia tu juego al folder de nginx
COPY Ahorcado.html ahorcado.js estilo-ahorcado.css img/ /usr/share/nginx/html/

# Exponer el puerto 80
EXPOSE 80

# Ejecuta Nginx en foreground
CMD ["nginx", "-g", "daemon off;"]

