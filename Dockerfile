FROM ubuntu:16.04

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y apache2 python
RUN apt-get install -y less

# Install apache and write hello world message
RUN echo "Hello World!" > /var/www/html/index.html

# Configure apache
RUN a2enmod rewrite
RUN chown -R www-data:www-data /var/www
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80
WORKDIR /opt
COPY . /opt
ENTRYPOINT ["/opt/entrypoint.py"]
