#!/bin/bash

docker pull postgres
docker run \
    -d \
    --name mypostgres \
    -v ~/postgresql/data:/var/lib/postgresql/data \
    -p 5432:5432 \
    -e POSTGRES_USER=myadmin \
    -e POSTGRES_PASSWORD=Tcdn@2007 \
    postgres

docker pull redis
docker run \
    -d \
    --name myredis \
    -p 6379:6379 \
    redis
