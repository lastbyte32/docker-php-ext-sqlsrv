FROM alpine:3.12
LABEL maintainer="lastbyte32@gmail.com"
RUN apk -U upgrade && apk add --no-cache \
    php7-pear \
    php7-dev \
    make \
    g++ \
    unixodbc-dev \
    php-pdo_mysql \
    && pecl install sqlsrv-5.8.1 && pecl install pdo_sqlsrv-5.8.1 && apk del --no-cache \
    php7-pear \
    php7-dev \
    make \
    g++ \
    unixodbc-dev \
    php-pdo_mysql \
    && rm -rf /var/cache/apk/* /tmp/*
