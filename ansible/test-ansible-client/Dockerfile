# Dockerfile : test-ansible-client
# Author     : Nigel Heaney
# Description: Setup centos7 container running ssh. This will then allow testing ansible against a container or services. Uses ssh key 
###

FROM centos:centos7

#my proxy stuff
ENV http_proxy="http://10.10.10.1:3128"
ENV https_proxy="http://10.10.10.1:3128"
ENV HTTP_PROXY="http://10.10.10.1:3128"
ENV HTTPS_PROXY="http://10.10.10.1:3128"

RUN yum -q -y install openssh-server passwd sudo iproute; yum clean all
ADD files/sshd.sh /sshd.sh
ADD files/sshd_config /etc/ssh/sshd_config
RUN mkdir /var/run/sshd
RUN mkdir /opt/data
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 
RUN useradd test
RUN mkdir /home/test/.ssh
ADD files/authorized_keys /home/test/.ssh/
RUN chown -R test:test /home/test/.ssh; chmod -R 700 /home/test/.ssh
ADD files/test-sudo /etc/sudoers.d/

RUN chmod 755 /sshd.sh
ENTRYPOINT "/sshd.sh"
