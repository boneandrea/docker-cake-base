#!/bin/bash
set -ex

docker-compose build --no-cache
docker-compose up -d

docker-compose run --rm web bin/cake version

# DB migrate
docker-compose run --rm web bin/cake migrations status
docker-compose run --rm web bin/cake migrations migrate

# Seeding
docker-compose run --rm web bin/cake migrations seed
