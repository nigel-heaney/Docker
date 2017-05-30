# Dockerfile : test-web
# Author     : Nigel Heaney
# Description: Create ansible sandbox to play and test playbooks. This is the master so should be used to connect to ansible clients 

#  
###

FROM centos:centos7

ENV http_proxy="http://10.10.10.1:3128"
ENV https_proxy="http://10.10.10.1:3128"
ENV HTTP_PROXY="http://10.10.10.1:3128"
ENV HTTPS_PROXY="http://10.10.10.1:3128"

RUN yum -q -y install epel-release; yum -q -y install openssh-clients net-tools iproute sudo ansible*; yum clean all
RUN mkdir /opt/data

RUN mkdir /root/.ssh
ADD files/id_rsa /root/.ssh/
RUN chown -R root:root /root/.ssh; chmod -R 700 /root/.ssh
ADD files/start.sh /start.sh
ADD files/gen_hosts.sh /gen_hosts.sh
ADD files/ansible.cfg /etc/ansible/ansible.cfg
RUN chmod 755 /gen_hosts.sh

#ENTRYPOINT "/bin/bash"

RUN chmod 755 /start.sh
ENTRYPOINT "/start.sh"

