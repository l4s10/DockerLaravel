# Basado en Debian 12
FROM debian:12

# Instalar las dependencias y herramientas necesarias
RUN apt-get update && apt-get install -y \
    apache2 \
    libapache2-mod-php8.2 \
    php8.2 \
    php8.2-cli \
    php8.2-fpm \
    php8.2-common \
    php8.2-mysql \
    php8.2-zip \
    php8.2-gd \
    php8.2-mbstring \
    php8.2-curl \
    php8.2-xml \
    php8.2-bcmath \
    curl \
    zip \
    unzip \
    git \
    mariadb-client \
    && apt-get clean

# Habilitar mod_rewrite para Laravel
RUN a2enmod rewrite

RUN mkdir /var/www/laravel_app
# Configurar el directorio de trabajo
WORKDIR /var/www/laravel_app

# Copiar un archivo de configuración de Apache virtualhost para configurar Laravel
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Instalar Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Permitir ejecutar Composer como superusuario y crear el proyecto Laravel
# Usualmente no es recomenado hacer este paso pero si estamos en un entorno de producción controlado si se puede hacer
ENV COMPOSER_ALLOW_SUPERUSER 1

# Verificar si Laravel ya está instalado (comprobando la existencia del archivo artisan). Si no lo está, instalar Laravel.
RUN if [ ! -f /var/www/laravel_app/artisan ]; then composer create-project laravel/laravel . "10.*"; fi

# Establece los permisos adecuados
RUN chown -R www-data:www-data /var/www/laravel_app/storage /var/www/laravel_app/bootstrap/cache
RUN chmod -R 775 /var/www/laravel_app/storage /var/www/laravel_app/bootstrap/cache

# Exponer el puerto 80 para el servicio web
EXPOSE 80

# Iniciar Apache en primer plano al iniciar el contenedor.
# Mantener Apache en primer plano es esencial para que el contenedor continúe ejecutándose.
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]