FROM php:8.1.16-apache-bullseye

WORKDIR /src

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apt-get update && \
    apt-get -y install git zip unzip libzip-dev libicu-dev libonig-dev && \
    docker-php-ext-install pdo_mysql intl zip bcmath