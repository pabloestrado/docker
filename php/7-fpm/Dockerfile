FROM debian:8

MAINTAINER Pavlo Romaniuk pabloestrado@gmail.com

RUN echo deb http://packages.dotdeb.org jessie all >> /etc/apt/sources.list.d/dotdeb.list

RUN apt-get update

RUN apt-get install -y --force-yes php7.0 php7.0-cli php7.0-fpm php7.0-common \
    php7.0-gd php7.0-mysql php7.0-mcrypt php7.0-curl php7.0-intl php7.0-xsl \
    php7.0-redis php7.0-geoip php7.0-curl php7.0-xdebug \
    php7.0-intl php7.0-json php7.0-readline nano supervisor python




EXPOSE 9000