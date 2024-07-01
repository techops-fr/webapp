FROM ubuntu:22.04
LABEL maintainer=admin@techops.ovh
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git 
# informatif
EXPOSE 80 
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]
