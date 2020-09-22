FROM php:5.6-apache

RUN apt-get update

# Install Postgre PDO
RUN apt-get install -y libpq-dev libmcrypt-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql

RUN docker-php-ext-install pdo pdo_mysql pdo_pgsql mcrypt

RUN \
    apt-get update && \
    apt-get install libldap2-dev -y && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ && \
    docker-php-ext-install ldap