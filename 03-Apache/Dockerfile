FROM ubuntu:bionic

RUN apt-get update && \
	apt-get install -y apache2 && \
	apt-get clean

COPY project/conf/httpd.conf /var/apache2/conf/
COPY project/source/* /var/www/html/

EXPOSE 80
ENTRYPOINT ["apachectl","-D","FOREGROUND"]


