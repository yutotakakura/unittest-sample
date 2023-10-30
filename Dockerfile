FROM php:8.2-cli
WORKDIR /usr/src/myapp
COPY ./php.ini /usr/local/etc/php/php.ini
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get -y install git \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug