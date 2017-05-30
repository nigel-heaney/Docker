#!/bin/bash

#Set to listen only eth0
ipaddr=`ip a | grep -A 2 eth0 | grep 'inet ' | awk '{print $2}' | sed 's/\/.*//g'` > /opt/data/hosts/${HOSTTYPE}-$(hostname -s)
echo $ipaddr > /opt/data/hosts/${HOSTTYPE}-$(hostname -s)

/usr/sbin/sshd -D -f /etc/ssh/sshd_config
