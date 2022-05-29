FROM php:8.1-apache

COPY ./.harmony/example-php/docker/etc /etc
COPY ./app /var/www/html

RUN composer install
