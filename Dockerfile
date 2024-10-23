FROM nginx:stable-perl

# Copier les fichiers HTML vers le répertoire par défaut de Nginx
COPY ./ /usr/share/nginx/html

# Installer PHP et PHP-FPM
RUN apt-get update && apt-get install -y \
    php-fpm \
    php-mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Exposer le port 80 pour Nginx
EXPOSE 80

# Démarrer Nginx et PHP-FPM
CMD service php7.4-fpm start && nginx -g "daemon off;"
