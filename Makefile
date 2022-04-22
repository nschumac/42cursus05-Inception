all:
	sudo docker-compose -f $(PWD)/srcs/docker-compose.yml up --build -d

clean:
	sudo docker-compose -f ./srcs/docker-compose.yml down

fclean:
	sudo docker-compose -f ./srcs/docker-compose.yml down --volumes --rmi all
	sudo rm -rf /home/nschumac/data/wp_database/*
	sudo rm -rf /home/nschumac/data/wp_website/*

clean_database:
	sudo rm -rf /home/nschumac/data/wp_database/*
	sudo rm -rf /home/nschumac/data/wp_website/*


re: fclean all