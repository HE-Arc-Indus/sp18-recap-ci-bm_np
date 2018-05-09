FROM jenkins/jenkins
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y maven
# drop back to the regular jenkins user - good practice
USER jenkins

# pour lancer le container docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home <nom de l'image>
# Faire le build du Dockerfile en faisant la commande build . dans le dossier du dockerfile
