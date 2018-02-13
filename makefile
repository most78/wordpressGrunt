.PHONY: build

# Important
PROJECT_NAME=wordpressgrunt
DOCKER_COMPOSE_WEB=docker-compose -p ${PROJECT_NAME} -f ./docker-compose.yml
DOCKER_COMPOSE_RUN_WEB=${DOCKER_COMPOSE_WEB} run wordpress

default: build

build:
		${DOCKER_COMPOSE_WEB} up && build