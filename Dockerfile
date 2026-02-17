FROM webdevops/php-nginx:8.2

WORKDIR /app

COPY . /app

RUN composer install --no-dev --prefer-dist --optimize-autoloader

RUN chown -R application:application storage bootstrap/cache

EXPOSE 8080
