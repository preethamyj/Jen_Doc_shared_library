FROM jenkins/jenkins:lts
USER root
RUN apt-get update \
    && apt-get install -y sudo libltdl-dev libnss3 \
    && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
USER jenkins
