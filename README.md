
# Conteneur Docker pour Qgis 2.18 LTR fr

1) Installer Docker https://www.docker.com/ (c'est mieux :) ;
2) Dézipper l'archive ci-jointe ;
3) Dans le répertoire concerné, lancer la commande (en root si besoin) `docker build . -t sylther/qgis2.18.ltr.fr`;
4) Lancer `./qgis.sh` ou `qgis.bat`.

Remarques :
* Toute nouvelle version de Qgis2.18.x implique de reconstruire l'image ;
* Testé uniquement sous Debian Stretch ; non testé sous Windows ;
* Aucune fioriture (interface Qt brute de pomme :).

Liens utiles et inspirants :
* https://doc.ubuntu-fr.org/docker
* https://www.wanadev.fr/24-tuto-docker-demarrer-docker-partie-2/
* https://store.docker.com/community/images/jancelin/docker-qgis-desktop

*Sylvain T., Paris, mars 2018.*