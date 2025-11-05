# ÉTAPE 1: Utiliser une image de base légère et fiable (Nginx)
# Nginx est un serveur web performant qui servira nos fichiers statiques.
FROM nginx:alpine

# ÉTAPE 2: Définir l'auteur du Dockerfile (Optionnel mais bonne pratique)
LABEL maintainer="Votre Nom ou Email"

# ÉTAPE 3: Copier les fichiers du site web vers le répertoire de publication de Nginx
# Le chemin par défaut pour les fichiers HTML statiques dans Nginx est /usr/share/nginx/html
# Le point '.' représente tous les fichiers et dossiers de votre contexte de build local (votre dossier MonSiteWeb)
COPY . /usr/share/nginx/html

# ÉTAPE 4: Exposer le port par défaut de Nginx (80)
# C'est le port sur lequel le conteneur écoutera.
EXPOSE 80

# ÉTAPE 5: Commande par défaut (Nginx démarrera automatiquement avec l'image de base)
# La commande par défaut de l'image Nginx est déjà de démarrer le serveur en arrière-plan.
# Si vous aviez besoin d'une configuration personnalisée, vous pourriez la mettre ici.
CMD ["nginx", "-g", "daemon off;"]
