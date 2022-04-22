FROM debian:buster

# Copy sql config file 

RUN apt-get update -y \
	# mariadb
	&& apt-get install -y mariadb-server \
	# removes some bloat
	&& rm -rf /var/lib/apt/lists/*

COPY setup_mariadb.sh ./
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/

EXPOSE 3306

CMD ["bash",  "setup_mariadb.sh"]
