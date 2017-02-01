FROM centos/php-56-centos7
COPY index.php /var/www/html/
RUN /bin/sed -i 's/Listen 80/Listen 8080/g; s/Listen 443/Listen 8443/g' /etc/apache2/ports.conf
