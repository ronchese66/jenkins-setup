FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
     docker.io curl && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN usermod -aG docker jenkins

USER jenkins

COPY plugins.txt /usr/share/jenkins/plugins.txt 

RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/plugins.txt

