FROM php:8-zts

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

RUN php -r "unlink('composer-setup.php');"

RUN pecl install xdebug

COPY ./.docker/coverage.phpunit.ini /usr/local/etc/php/conf.d/coverage.phpunit.ini

WORKDIR /var/www/html

CMD ["php", "-S", "0.0.0.0:8000", "www/index.php"]
