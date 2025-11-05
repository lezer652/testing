# Utiliser une image Ubuntu comme base
FROM ubuntu:22.04

# Informations sur l'image
LABEL maintainer="lezer652"

# Installer Nginx et Git
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git

# Supprimer les fichiers par défaut
RUN rm -rf /var/www/html/*

# Cloner ton dépôt GitHub directement dans le dossier web
RUN git clone https://github.com/lezer652/portfolio.git /var/www/html/

# Modifier la configuration de Nginx pour écouter sur le port 10000
RUN sed -i 's/listen 80 default_server;/listen 10000 default_server;/g' /etc/nginx/sites-available/default && \
    sed -i 's/listen \[::\]:80 default_server;/listen \[::\]:10000 default_server;/g' /etc/nginx/sites-available/default

# Exposer le port HTTP 10000
EXPOSE 10000

# Démarrer Nginx
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
