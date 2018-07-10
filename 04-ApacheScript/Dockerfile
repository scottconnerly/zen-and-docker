FROM ubuntu:bionic

COPY project/build/* /etc/build/
RUN chmod a+x /etc/build/*.sh && \
	/etc/build/install-apache.sh

COPY project/conf/httpd.conf /var/apache2/conf/
COPY project/source/* /var/www/html/

EXPOSE 80
ENTRYPOINT ["apachectl","-D","FOREGROUND"]
