#!/bin/bash

function pullImage() {
	docker pull $1
}

docker -v || exit 1

echo "Docker is Installed proceeding..."

echo "PULLING UP IMAGES..."

pullImage mongo:6 &&
	pullImage "mysql:8.1.0" &&
	pullImage "postgres:14"

echo "CREAING VOLUMES FOR IMAGES..."


BASE_PATH="$HOME"/docker

mkdir -p "$BASE_PATH"

mkdir -p "$BASE_PATH"/mongodb
mkdir -p "$BASE_PATH"/mysql
mkdir -p "$BASE_PATH"/postgres

echo "DOCKER SETUP DONE"