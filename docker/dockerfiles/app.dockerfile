FROM php:7.2-fpm

# TODO: Create dev.dockerfile and prod.dockerfile
# TODO: wget should only be installed in a dev.dockerfile
# DEV: zip/unzip are for composer unpackaging
RUN apt-get update \
    && apt-get install -y --no-install-recommends wget zip unzip \
    && rm -rf /var/lib/apt/lists/*

# TODO: phpunit should only be installed in a dev.dockerfile
RUN wget https://phar.phpunit.de/phpunit-6.5.phar \
    && chmod +x phpunit-6.5.phar \
    && mv phpunit-6.5.phar /usr/local/bin/phpunit

# TODO: This should actually always be installed, right?
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

# WORKDIR /var/www/nefcu-laravel

# COPY composer.lock .
# COPY composer.json .

# RUN composer install

RUN docker-php-ext-install pdo_mysql
