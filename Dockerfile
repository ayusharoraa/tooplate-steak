FROM ubuntu:latest
LABEL "author" = "this is ayush"
LABEL "PROJECT" = "images"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install git -y
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl","-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD archive.tar.gz /var/www/html


