FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean
COPY . /var/www/html/
CMD ["apachectl", "-D", "FOREGROUND"]
