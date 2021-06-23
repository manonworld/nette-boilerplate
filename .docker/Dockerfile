FROM php:8.1.0alpha1-zts

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

RUN php -r "unlink('composer-setup.php');"

WORKDIR /var/www/html

CMD ["php", "-S", "0.0.0.0:8000", "www/index.php"]
