# Apache2 + PHP5 for MODX
FROM ubuntu:14.04
MAINTAINER Radic <radic@radic.ru>

RUN apt-get update && \
  apt-get -y install apache2 libapache2-mod-auth-mysql php5-mysql \
  php5 php5-gd libapache2-mod-php5 php5-mcrypt imagemagick && \
  echo "ServerName localhost" >> /etc/apache2/apache2.conf && \
  a2enmod rewrite

COPY ssl-keys/ /var/ssl-keys/

ADD apache_default_conf /etc/apache2/sites-available/000-default.conf
ADD default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
ADD apache_dir_conf /etc/apache2/mods-enabled/dir.conf

EXPOSE 80 443

CMD /usr/sbin/apache2ctl -D FOREGROUND

