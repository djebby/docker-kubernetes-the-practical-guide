FROM php:8.2.4-fpm-alpine
     
WORKDIR /var/www/html
 
COPY src ./
 
RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html
 
# RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
 
# USER laravel