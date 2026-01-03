FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
     docker.io curl && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN usermod -aG docker jenkins

USER jenkins

RUN jenkins-plugin-cli --plugins \
    blueocean \
    docker-workflow \
    workflow-aggregator \
    git \
    pipeline-stage-view \
    credentials

