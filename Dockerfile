FROM php:8.1-apache

COPY ./.harmony/example-php/docker/etc /etc
COPY ./app /var/www/html

RUN apt-get update && \
    apt-get -y install zip && \
    apt-get -y autoremove && \
    apt-get clean && \
    curl -sS "https://getcomposer.org/installer" | php && \
    mv ./composer.phar /usr/local/bin/composer && \
    composer install
