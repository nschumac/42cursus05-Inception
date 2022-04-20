FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y \
	# mariadb
	&& apt-get install mariadb-server -y

EXPOSE 3306

CMD ["mysqld"]
