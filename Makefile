all:
	sudo docker-compose -f $(PWD)/srcs/docker-compose.yml up --build

clean:
	sudo docker system prune -a --volumes