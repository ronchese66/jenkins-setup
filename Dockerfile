FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
     docker.io && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN jenkins-plugin-cli --plugins \
    blueocean \
    docker-workflow \
    git \
    pipeline-stage-view \
    credentials

USER jenkins

