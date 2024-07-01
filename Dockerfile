FROM ubuntu:22.04
MAINTAINER admin@techops.ovh
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx
EXPOSE 80
COPY static-website-example/ /var/www/html
ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;" ]
