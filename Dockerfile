# install php
FROM php:8.1.0-fpm-alpine

# install system dependecy or server
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    curl \
    unzip \
    git

# install php extension


WORKDIR /var/www/html

COPY . /var/www/html