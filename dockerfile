FROM php:8.1-apache

# Copiar todo al contenedor
COPY . /var/www/html/

# Ajustar permisos
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Instalar extensión mysqli
RUN docker-php-ext-install mysqli

# Activar mod_rewrite (opcional)
RUN a2enmod rewrite