#!/bin/bash
set -ex

cd docker

docker-compose build --no-cache
docker-compose up # -d

docker-compose run --rm app bin/cake version

# DB migrate
docker-compose run --rm app bin/cake migrations status
docker-compose run --rm app bin/cake migrations migrate

# Sessiontable
#docker exec -i dog_mysql bash -c "mysql stg_pet_lifestyle_com -u root -proot" < ../config/schema/sessions.sql

# Seeding
#docker exec -it dog_app bash -c "bin/cake migrations seed"
