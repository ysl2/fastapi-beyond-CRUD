#!/bin/bash

docker pull postgres:latest
docker run \
    -d \
    --name mypostgres \
    -v ~/postgresql/data:/var/lib/postgresql/data \
    -p 5432:5432 \
    -e POSTGRES_USER=myadmin \
    -e POSTGRES_PASSWORD=123456 \
    postgres
# NOTE: After running database, you should enter the container with /usr/bin/psql and then run:
# ALTER USER myadmin WITH PASSWORD '123456'

docker pull redis:latest
docker run \
    -d \
    --name myredis \
    -p 6379:6379 \
    redis
