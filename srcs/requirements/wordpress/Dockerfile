FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y \
	&& apt-get install php7.3-fpm php7.3-mysql -y \
	&& rm -rf /etc/php/7.3/fpm/pool.d/www.conf \
	&& apt-get install curl -y \
	&& apt-get install mariadb-client -y \
	&& mkdir /run/php 

COPY ./www.conf /etc/php/7.3/fpm/pool.d/

WORKDIR /var/www/

RUN curl -O https://wordpress.org/latest.tar.gz \
	&& tar -xzvf latest.tar.gz \
	&& rm -rf latest.tar.gz \
	&& rm -rf /var/lib/apt/lists/*

# load configuration file of wordpress to root of wordpress dir
COPY ./wp-config.php ./wordpress

EXPOSE 9000

CMD ["php-fpm7.3", "-F"]
