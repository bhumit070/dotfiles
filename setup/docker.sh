#!/bin/bash

function pullImage() {
	docker pull $1
}

function createVolumeName() {
	docker volume create $1
}

docker -v || exit 1

echo "Docker is Installed proceeding..."

echo "PULLING UP IMAGES..."

pullImage mongo &&
	pullImage "mysql" &&
	pullImage "postgres" &&
	pullImage "postgres" &&
	pullImage "dpage/pgadmin4" &&
	pullImage "phpmyadmin"

echo "CREAING VOLUMES FOR IMAGES..."

createVolumeName 'mongo' &&
	createVolumeName 'mysql' &&
	createVolumeName 'pgadmin' &&
	createVolumeName 'postgres'

echo "DOCKER SETUP DONE"
