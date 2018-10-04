# This is not a dependency of 'clean' because that deletes all data already

all: start init

# rebuild container forcely 
start:
	docker-compose up --force-recreate -d

# start up the container and initialize db setting from sql (create database and create table and set the data)
init: start
	$(info *** Importing SQL dumps. Please do not interrupt this process... ***)
	docker-compose up -d project-db
	docker-compose exec -T project-db sh -c \
		"cat /docker-entrypoint-initdb.d/* | mysql -uroot -p'P@ssword!1'"

# docker down and remove volume
# clean:
# 	docker-compose down -v
	
