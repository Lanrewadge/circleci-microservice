FROM ubuntu

RUN apt-get -y update && apt-get -y install nginx

RUN apt-get update && apt-get install -y kubectl

COPY default /etc/nginx/sites-available/default

EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]