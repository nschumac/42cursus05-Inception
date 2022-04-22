FROM debian:buster

RUN apt-get update -y \
	# nginx and openssl
	&& apt-get install -y nginx openssl \
	# create ssl key
	&& openssl req -x509 -newkey rsa:2048 -nodes -out /etc/ssl/certs/nginx.crt -keyout /etc/ssl/private/nginx.key -subj "/C=DE/ST=BW/L=Heilbronn/O=bruh/CN=10.0.2.15" \
	# removes some bloat
	&& rm -rf /var/lib/apt/lists/*

COPY default.conf /etc/nginx/sites-enabled/default

#COPY index.html /data/www/index.html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]