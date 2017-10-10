FROM php:7.1-apache

LABEL maintainer "Pinkal Vansia (p.vansia@gmail.com)"

ARG COMPOSER_VERSION=1.3.2
ENV COMPOSER_HOME /home/composer
ENV COMPOSER_CACHE_DIR=${COMPOSER_HOME}/cache

RUN apt-get update && \
    apt-get install -y wget git zip unzip && \
    wget https://getcomposer.org/download/${COMPOSER_VERSION}/composer.phar -O /usr/local/bin/composer && \
    chmod +x /usr/local/bin/composer && \
    mkdir -p ${COMPOSER_CACHE_DIR} && \
    chmod 0777 -R ${COMPOSER_HOME} && \
    docker-php-ext-install pdo_mysql && \
    a2enmod rewrite

EXPOSE 8080