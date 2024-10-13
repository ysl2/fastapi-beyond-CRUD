#!/bin/bash
docker run \
    -id \
    --name=postgresql \
    -v ~/postgresql/data:/var/lib/postgresql/data \
    -p 5432:5432 \
    -e POSTGRES_USER=myadmin \
    -e POSTGRES_PASSWORD=Tcdn@2007 \
    postgres
