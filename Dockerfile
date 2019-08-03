FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install ssh -y
RUN apt-get install ansible -y
RUN ansible --version 
RUN mkdir -p /home/ansible
RUN mkdir -p /root/.ssh
ARG SSH_KEY
RUN echo "$SSH_KEY" > /root/.ssh/ansible-course-key-pair.pem
RUN chmod 400 /root/.ssh/ansible-course-key-pair.pem
WORKDIR /home/ansible
