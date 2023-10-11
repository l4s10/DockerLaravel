FROM php:8.2-apache

# Instalar extensiones requeridas por Laravel y habilitar mod_rewrite para Apache
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev zip git unzip && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd pdo pdo_mysql && \
    a2enmod rewrite

# Instalar Composer globalmente
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copia la configuración personalizada de Apache
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Configurar el directorio de trabajo
WORKDIR /var/www/html

# Si el proyecto Laravel no existe, lo crea
RUN if [ ! -d "/var/www/html/vendor" ]; then composer create-project --prefer-dist laravel/laravel .; fi

# Establece los permisos adecuados
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache
RUN chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache


EXPOSE 80
