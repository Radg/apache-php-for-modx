# Apache2 + PHP5 for MODX
FROM radiq/apache-php
MAINTAINER Radic <radic@radic.ru>

COPY ssl-keys/ /var/ssl-keys/

ADD apache_default_conf /etc/apache2/sites-available/000-default.conf
ADD default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
ADD apache_dir_conf /etc/apache2/mods-enabled/dir.conf

