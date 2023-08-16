FROM alpine

RUN apk update && apk add apache2 && apk cache clean
ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"

LABEL description="Webserver"
LABEL version="1.0.0"
LABEL versionTag="alpha"

VOLUME /var/www/html/
EXPOSE 80
