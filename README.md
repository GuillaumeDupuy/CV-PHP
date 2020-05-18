# eval_site_php

# vendredi 15 mai : télechargement du portfolio et modification du site à mon image (photo, texte, titre, transformation des ahref="id" en nouvelles pages distinctes, fab icon cliquable et renvoie sur mes données personnelles,...) 

# samedi 16 mai : nothing à cause du travail

# dimanche 17 mai : création et importation du dossier sur github, création, connection et importation de la TABLE sql du site 

# lundi 18 mai : correction de bug au niveau de l'ajout, ajout de la fonction modification et suppression
# ajout de la déconnexion et de la connexion permettant d'accéder à la page Administration 
# + partie Education en BDD


# découverte d'un bug à régler : quand on clique sur modifier et qu'on finit la modification et qu'elle s'enregistre, on reste quand même sur la page modification (à cause du $GET) alors au lieu d'en créer une autre, on modifie toujours la même.

# solution envisagée : créer une pop-up qui dit que la modification est finie et qui refresh la page admin (sans le $GET modif) quand on clique sur "Ok"
