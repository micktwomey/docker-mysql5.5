TAG=micktwomey/mysql5.5

build:
	docker build -t $(TAG) .

shell:
	docker run --rm -i -t --link=mysql:mysql --entrypoint=/bin/bash $(TAG) -i

mysql:
	docker run --rm -i -t --link=mysql:mysql --entrypoint=/bin/bash $(TAG) /mysql/bin/mysql.sh

run:
	docker run -i -t --name=mysql $(TAG)

start:
	docker run -d --name=mysql $(TAG)
