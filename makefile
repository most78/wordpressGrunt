.PHONY: build logs

# Important
PROJECT_NAME=wordpressgrunt
DOCKER_COMPOSE_WEB=docker-compose -p ${PROJECT_NAME} -f ./docker-compose.yml

default: build

build:
	${DOCKER_COMPOSE_WEB} up -d

logs:
	${DOCKER_COMPOSE_WEB} logs -f