FROM php:5-alpine

# Install Composer for PHP package dependencies
ENV COMPOSER_ALLOW_SUPERUSER=1 \
    COMPOSER_VERSION=1.3.0
RUN curl -fSL -o /tmp/composer-setup.php https://getcomposer.org/installer \
    && curl -fSL -o /tmp/composer-setup.sig https://composer.github.io/installer.sig \
    && php -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); echo 'Invalid installer' . PHP_EOL; exit(1); }" \
    && php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION} \
    && rm -rf /tmp/composer-setup.php \
    && composer -V

# Run Composer
WORKDIR /var/www/html
COPY composer.json composer.lock /var/www/html/
RUN composer install --no-ansi

# Install the codebase
COPY . /var/www/html
