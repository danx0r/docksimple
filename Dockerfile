FROM ubuntu:16.04

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y apache2 python
RUN apt-get install -y less

# Install apache and write hello world message
RUN echo "It's dock simple, Danx0r (if that really is your name)" > /var/www/html/index.html

# Configure apache
RUN a2enmod rewrite
RUN chown -R www-data:www-data /var/www
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

COPY ./000-default.conf /etc/apache2/sites-enabled/

WORKDIR /opt
COPY . /opt
ENTRYPOINT ["/opt/entrypoint.py"]
