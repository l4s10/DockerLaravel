# Especificar la imagen base
FROM debian:12

# Actualizar la lista de paquetes disponibles e instalar las dependencias necesarias
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    libzip-dev \
    libicu-dev \
    libonig-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libxml2-dev \
    apache2

# Instalar PHP y las extensiones necesarias
RUN apt-get install -y php libapache2-mod-php php-dom php-xml php-curl php-mysql

# Habilitar el módulo mod_rewrite de Apache
RUN a2enmod rewrite

# Descargar e instalar Composer
RUN curl -sSL https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Clonar el repositorio de Laravel en un subdirectorio de /var/www/html
RUN git clone https://github.com/l4s10/SIA2_SII.git /var/www/html/laravel

# Instalar las dependencias de Laravel
WORKDIR /var/www/html/laravel
RUN composer install

# Establecer los permisos adecuados
RUN chown -R www-data:www-data /var/www/html/laravel/storage /var/www/html/laravel/bootstrap/cache
RUN chmod -R 775 /var/www/html/laravel/storage /var/www/html/laravel/bootstrap/cache

# Copiar el archivo de configuración de Apache a su lugar y habilitarlo
COPY ./laravel.conf /etc/apache2/sites-available/laravel.conf
RUN a2ensite laravel.conf && a2dissite 000-default.conf

# Copiar el archivo .env a la carpeta raíz de la aplicación Laravel
COPY ./.env /var/www/html/laravel/.env

# Generar la llave de la aplicación Laravel
RUN php artisan key:generate

# Iniciar Apache en primer plano al iniciar el contenedor.
# Mantener Apache en primer plano es esencial para que el contenedor continúe ejecutándose.
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]