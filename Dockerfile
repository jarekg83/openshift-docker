FROM php:7.0-apache
COPY index.php /var/www/html/
RUN /bin/sed -i 's/Listen 80/Listen 8080/g; s/Listen 443/Listen 8443/g' /etc/apache2/ports.conf
