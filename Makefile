all:
	sudo docker-compose -f $(PWD)/srcs/docker-compose.yml up --build -d

clean:
	sudo docker-compose -f ./srcs/docker-compose.yml down

fclean:
	sudo docker rmi $(sudo docker images -a -q)
	sudo docker volume rm $(sudo docker volume ls -q)
	sudo docker network rm $(sudo docker network ls -q)