FROM alpine:3.14
LABEL maintainer="lastbyte32@gmail.com"
RUN apk -U upgrade && apk add --no-cache \
    php7-pear \
    php7-dev \
    make \
    g++ \
    unixodbc-dev \
    php-pdo_mysql \
    && pecl install sqlsrv-5.9.0 && pecl install pdo_sqlsrv-5.9.0 && apk del --no-cache \
    php7-pear \
    php7-dev \
    make \
    g++ \
    unixodbc-dev \
    php-pdo_mysql \
    && rm -rf /var/cache/apk/* /tmp/*
