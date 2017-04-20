FROM docker.io/centos:latest
RUN yum install php -y
RUN sed -i 's/Listen 80/Listen 8080/g;s/User apache/User default/g;s/Group apache/Group default/g' /etc/httpd/conf/httpd.conf

RUN useradd -U -u 10001 default
RUN chown default:default -R /var/log/httpd/ /etc/httpd /run/httpd

COPY index.php /var/www/html/

USER default

CMD [ "httpd" , "-D" , "FOREGROUND" ]
