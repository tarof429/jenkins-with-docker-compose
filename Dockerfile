FROM  jenkins/jenkins:lts
USER root
RUN apt-get -y update
RUN apt-get -y install sudo zip vim
RUN echo 'jenkins ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER jenkins
