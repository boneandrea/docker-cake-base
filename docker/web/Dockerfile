FROM php:8.1-apache
#FROM php:8.1-apache-buster

# timezone
RUN (echo "Asia/Tokyo" >| /etc/timezone) && \
  rm /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

RUN apt update && apt install -y libicu-dev vim git zip # supervisor zlib1g-dev libzip-dev libpng-dev libjpeg-dev
#RUN docker-php-ext-configure gd --with-jpeg-dir=/usr/include
RUN docker-php-ext-install pdo_mysql intl #zip gd exif
RUN a2enmod rewrite

ARG APP_NAME

# install composer
RUN (curl -sS https://getcomposer.org/installer | php) && mv composer.phar /usr/local/bin/composer

# 光遅い問題 (https://qiita.com/bezeklik/items/f9bc7afc229b5476e822)
#RUN composer config -g repos.packagist composer https://packagist.jp && composer global require hirak/prestissimo

ADD supervisord.conf /etc/supervisord.conf

EXPOSE 80
#CMD ["/usr/bin/supervisord"]
