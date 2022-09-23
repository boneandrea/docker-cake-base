#!/bin/bash
set -ex

docker-compose build --no-cache

# install tools
## php
docker-compose run --rm web composer i --no-interaction
## js
docker-compose run --rm web npm install

# DB migrate & seeding
docker-compose run --rm web bin/cake migrations status
docker-compose run --rm web bin/cake migrations migrate
docker-compose run --rm web bin/cake migrations seed

# start
docker-compose up -d
