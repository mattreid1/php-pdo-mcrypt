FROM php:5.6-apache

RUN apt-get update

# Install Postgre PDO
RUN apt-get install -y libpq-dev libmcrypt \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql

RUN docker-php-ext-install pdo pdo_mysql pdo_pgsql mcrypt
