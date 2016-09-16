docker-compose, Apache + PHP5 with MySQL for MODX
=================================================

Usage:
------
1. *git clone https://github.com/Radg/apache-php-for-modx.git && cd apache-php-for-modx*
2. Edit (if nessesary):
    1. *images/www/apache_default_conf*
    2. *images/www/default-ssl.conf*
    3. *images/www/Dockerfile*
3. Copy your current (or fresh install) MODX website folder to *wwwhtml/*
4. Copy your current MySQL database folder to *libmysql/* (or leave in empty on fresh install)
5. Set MySQL root user password in *docker-compose.yml*
6. Finally, start containers with *docker-compose up -d*