FROM jenkins/jenkins:lts

USER jenkins

COPY plugins.txt /usr/share/jenkins/plugins.txt 

RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/plugins.txt

ENV CASC_JENKINS_CONFIG=https://raw.githubusercontent.com/ronchese66/devops-lab/main/ci/jenkins-config/jcasc.yaml
