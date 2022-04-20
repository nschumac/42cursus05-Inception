FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y \
	&& apt-get install php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip \
	&& apt-get install curl \
	&& apt-get mariadb-client \
	# download wordpress
	&& cd /var/www/html/ \
	&& curl -O https://wordpress.org/latest.tar.gz \
	&& tar -xzvf latest.tar.gz \

	# configuring wordpress
	&& cd wordpress \
	&& cp wp-config-sample.php wp-config.php \



EXPOSE 9000

