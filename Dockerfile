FROM jenkins/agent:alpine-jdk11

USER root

# Install Python and pip
RUN apk add --no-cache python3 py3-pip


ADD https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/3301.v4363ddcca_4e7/remoting-3301.v4363ddcca_4e7.jar /home/jenkins/remoting-3301.v4363ddcca_4e7.jar

# Ensure permissions are correct
RUN chown -R jenkins:jenkins /home/jenkins

USER jenkins
WORKDIR /home/jenkins
