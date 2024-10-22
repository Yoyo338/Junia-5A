FROM nginx:stable-perl

# Copier les fichiers HTML vers le répertoire par défaut de Nginx
COPY ./html /usr/share/nginx/html

# Exposer le port 80 pour Nginx
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
