FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y \
	&& apt-get install php7.3-fpm php7.3-mysql -y \
	&& apt-get install curl -y \
	&& apt-get install mariadb-client -y \
	&& mkdir /run/php \
	&& rm -rf /var/lib/apt/lists/*

COPY ./www.conf /etc/php/7.3/fpm/pool.d/
COPY ./setup.sh ./

# install wpcli
# https://spacifik.de/blog/install-wordpress-via-terminal/
RUN mkdir -p /var/www/wordpress \
	&& curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp \
	&& chmod +x setup.sh

EXPOSE 9000

CMD ["bash", "setup.sh"]
