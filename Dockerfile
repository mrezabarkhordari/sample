FROM php:7.4-apache
RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_pgsql
COPY ./src/php7.4.ini /usr/local/etc/php/php.ini
COPY ./src/index.php /var/www/html/index.php
