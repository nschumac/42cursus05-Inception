FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y \
	&& apt-get install nginx -y && apt-get install openssl -y \
	# create directory for ssl key
	&& mkdir /etc/ssl/nginx \
	# create ssl key
	&& openssl req -new -newkey rsa:2048 -nodes -out /etc/ssl/nginx/nginx.crt -keyout /etc/ssl/nginx/nginx.key -subj "/C=DE/ST=BW/L=Heilbronn/O=YEET1000.com/OU=BRUH/CN=www.nschumac.de"

#RUN rm /etc/nginx/conf.d/default.conf

COPY default.conf /etc/nginx/sites-enabled/default

COPY index.html /data/www/index.html

#EXPOSE 443
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]