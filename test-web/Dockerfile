# Dockerfile : test-web
# Author     : Nigel Heaney
# Date       : 16th June 2016
# Description: Dockerfile that will setup a simple python webserver which will just display the hostname its running. 
#              This is good to test load balancing, swarm mode scaling etc.
###

FROM alpine

ENV http_proxy="http://10.10.10.1:3128"
ENV https_proxy="http://10.10.10.1:3128"
ENV HTTP_PROXY="http://10.10.10.1:3128"
ENV HTTPS_PROXY="http://10.10.10.1:3128"


RUN apk add --update \
    python \
  && rm -rf /var/cache/apk/*

WORKDIR /apps

COPY files/* /apps/
RUN chmod 755 /apps/test*

EXPOSE 8000
CMD ["/bin/ash", "launch.sh"]
#CMD ["/bin/ash"]





