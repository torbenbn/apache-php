FROM ubuntu/apache2:latest

EXPOSE 80
VOLUME [ "/var/www" ]

RUN apt-get -y update && \
    apt-get install -y php-cli php-gd libapache2-mod-php && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    a2enmod dav && \
    a2enmod dav_fs
