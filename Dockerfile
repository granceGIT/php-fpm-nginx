FROM php:8.1-fpm
MAINTAINER Akopyan L.D.

RUN apt-get update && apt-get install -y \
        curl \
        git \
        nginx \

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ADD php.ini /usr/local/etc/php/conf.d/40-custom.ini

WORKDIR /var/www

ENTRYPOINT ["php-fpm"]