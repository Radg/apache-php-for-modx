# Apache2 + PHP5 for MODX
FROM ubuntu:14.04
MAINTAINER Radic <radic@radic.ru>

RUN apt-get update && \
  apt-get -y install apache2 libapache2-mod-auth-mysql php5-mysql \
  php5 php5-gd libapache2-mod-php5 php5-mcrypt imagemagick msmtp && \
  echo "ServerName localhost" >> /etc/apache2/apache2.conf && \
  a2enmod rewrite

# COPY ssl-keys/ /var/ssl-keys/

ADD apache_default_conf /etc/apache2/sites-available/000-default.conf
ADD apache_default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
ADD apache_dir_conf /etc/apache2/mods-enabled/dir.conf
ADD htpasswd /etc/apache2/.htpasswd

ADD msmtprc /etc/msmtprc

COPY apache_start.sh /

RUN chmod +x /apache_start.sh && chown www-data:www-data /etc/msmtprc && \
  chmod 600 /etc/msmtprc && touch /var/log/msmtp.log && chown www-data:www-data /var/log/msmtp.log && \
  echo "sendmail_path = \"/usr/bin/msmtp -C /etc/msmtprc --logfile /var/log/msmtp.log -t\"" >> /etc/php5/apache2/php.ini

EXPOSE 80 443

CMD ./apache_start.sh
