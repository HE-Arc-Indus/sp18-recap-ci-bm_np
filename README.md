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
	o Créez un projet vide avec maven.
	o Ce projet doit supporter le java 8 et disposer des dépendances vers Junit.
	o Créez un fichier gitignore approprié et poussez le code sur le répo de votre équipe
	o Assurez-vous que le projet vide se build correctement
3) Lancez le container jenkins en y associant un volume et assurez-vous de la bonne configuration des outils de build (maven, java, etc)
Maven home : /usr/share/maven
Java : /docker-java-home

3b) Job "standard" avec le répo github --> Tester le build avec Jenkins
4) Créez un jenkinsfile pour l’intégration continue de votre projet.
5) Créez un projet jenkins de type pipeline pour l’intégration continue de votre projet
6) Réalisez le KATA FizzBuzz