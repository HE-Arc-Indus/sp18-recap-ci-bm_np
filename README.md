# Industrialisation - Exercice de récapitulation
## Participants
1. Bastien Mittempergher
2. Normand Paratte

## But de l'exercice

- Appliquer l’ensemble de la chaîne correspondant au pipeline d’intégration continue.
- Configurer les outils nécessaires pour construire un pipeline CI basique

## Donnée de l'exercice

1) Formez une équipe de 2 personnes et acceptez l’assignment github https://classroom.github.com/g/wfUIKX56
2) Outils de build et contrôle de version
- Créez un projet vide avec maven.
- Ce projet doit supporter le java 8 et disposer des dépendances vers Junit.
- Créez un fichier gitignore approprié et poussez le code sur le répo de votre équipe
- Assurez-vous que le projet vide se build correctement
3) Lancez le container jenkins en y associant un volume et assurez-vous de la bonne configuration des outils de build (maven, java, etc)
- Maven home : /usr/share/maven
- Java : /docker-java-home
4) Job "standard" avec le répo github --> Tester le build avec Jenkins
5) Créez un jenkinsfile pour l’intégration continue de votre projet.
6) Créez un projet jenkins de type pipeline pour l’intégration continue de votre projet
7) Réalisez le KATA FizzBuzz

## Etapes

- Initialiser le répo git avec readme, gitignore, projet vide, fichier pom configuré correctement, etc.
- Créer un dockerfile -> Décrit l'image
- Se déplacer à l'endroit du fichier via docker : cd C:/Users/normand.paratte/Documents/IdeaProjects/indus/sp18-recap-ci-bm_np
- Construire l'image (faire un build) --> docker build -t monimage . (ex: monimage -> jenkins_image)
- Lancer le container docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home monimage
   --> Instancie un container avec l'image (Si n'existe pas, télécharge l'image de jenkins)
- Se connecter à jenkins depuis un navigateur à l'adresse de docker (dans notre cas 192.168.99.100/8080) :
  - Pour le débloquer, il faut copier le mot de passe depuis la console (il se peut que ce dernier ne soit pas affiché)
  - Si le mot de passe n'est pas affiché dans la console, il faut aller le récupérer sur la machine lancée :
    - Dans une invite de commandes Windows, voir les images lancées avec **docker ps**
	- Ouvrir une commande bash sur la machine souhaitée avec ** docker exec -it [containerID] bash**
	- Récupérer le mot de passe dans le fichier **/var/nomVolume/secrets/initialAdminPassword** 
		à l'aide de la commande **cat** (attention, il n'y a pas vim ni nano par défaut)
- Initialiser Jenkins :
	- Installer les modules
	- Créer le ou les utilisateurs
- Configurer Jenkins :
	- Créer un projet pipeline
	- Ajouter l'URL github (dans notre cas https://github.com/HE-Arc-Indus/sp18-recap-ci-bm_np)
	- Créer un Jenkinsfile (Attention au nom et à la casse !)
	- Normalement le build devrait se lancer automatiquement lors d'un POST depuis github (webbook), cependant la machine jenkins étant en local, il faut lancer les builds à la main pour l'exercice
	
## Informations importantes
 - Utilisateur admin :
	- Nom d'utilisateur : normand.paratte
	- Mot de passe : normand.paratte
	