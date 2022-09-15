FROM php:8.1-apache

# timezone
RUN (echo "Asia/Tokyo" >| /etc/timezone) && \
  rm /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

RUN apt update && apt install -y libicu-dev vim git zip

# 画像のGDとか特殊用途あれば
#RUN docker-php-ext-configure gd --with-jpeg-dir=/usr/include
#RUN apt install lib1g-dev libzip-dev libpng-dev libjpeg-dev

RUN docker-php-ext-install pdo_mysql intl
RUN a2enmod rewrite

# install composer
RUN (curl -sS https://getcomposer.org/installer | php) && mv composer.phar /usr/local/bin/composer

EXPOSE 80
#CMD ["/usr/bin/supervisord"]
