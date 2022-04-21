FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y \
	# mariadb
	&& apt-get install mariadb-server -y \
	# removes some bloat
	&& rm -rf /var/lib/apt/lists/*

COPY ./50-server.conf /etc/mysql/mariadb.conf.d/

# Copy sql config file 
COPY config.sql ./

RUN service mysql start && mysql < config.sql \
	&& rm -rf config.sql

EXPOSE 3306

CMD ["mysqld_safe"]
