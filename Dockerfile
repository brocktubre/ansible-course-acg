FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install ssh -y
RUN apt-get install ansible -y
RUN mkdir -p /home/ansible
RUN mkdir -p /root/.ssh
ARG SSH_KEY
RUN echo "$SSH_KEY" > /root/.ssh/iMac-Key-Pair.pem
RUN chmod 400 /root/.ssh/iMac-Key-Pair.pem
