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

1) Initialiser le répo git avec readme, gitignore, projet vide, fichier pom configuré correctement, etc.
2) Créer un dockerfile -> Décrit l'image
3) Construire l'image (faire un build) --> docker build -t monimage .
3) Lancer le container docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home monimage
   --> Instancie un container avec l'image (Si n'existe pas, télécharge l'image de jenkins)

