FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy game files to nginx directory
COPY index.html /usr/share/nginx/html/
COPY ahorcado.js /usr/share/nginx/html/
COPY estilo-ahoracado.css /usr/share/nginx/html/
COPY img/ /usr/share/nginx/html/img/

# Expose port 80
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
