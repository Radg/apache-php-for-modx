docker-compose, Apache + PHP5 with MySQL for MODX
=================================================

Usage:
------
1. *git clone https://github.com/Radg/apache-php-for-modx.git && cd apache-php-for-modx*
2. Edit (if nessesary):
    1. *images/www/apache_default_conf*
    2. *images/www/default-ssl.conf*
3. Edit (if nessesary) *images/www/Dockerfile* Uncomment "ADD htpasswd /etc/apache2/.htpasswd" if you need password authentification for your website (user test, password test)
4. Edit *images/www/msmtprc*. This file is msmtp configuration, used for sending mail from PHP. Update it according to your mail settings.
5. Copy your current (or fresh installed) MODX website folder to *wwwhtml/*
6. Copy your current MySQL database folder to *libmysql/* (or leave in empty on fresh install)
7. Set MySQL root user password in *docker-compose.yml*
8. Finally, start containers with *docker-compose up -d*
