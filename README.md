# What

How to create containers where CakePHP runs.
# How

## Install WebApp

Install cakephp in working directory.
```
cd __WORKDIR__
composer create-project --prefer-dist "cakephp/app:4.*" myapp
```

## Add Docker config
```
cp -r docker docker-compose.yml setup.sh __WORKDIR__/myapp
```
## Setup App: db connection

edit `__WORKDIR__/myapp/config/app_local.php` as below.

```
'Datasources' => [
    'default' => [
        'host' => 'db',
        'username' => 'user',
        'password' => 'pass',
        'database' => 'project',
    ],
    'test' => [
        'host' => 'db',
        'username' => 'user',
        'password' => 'pass',
        'database' => 'test_project',
    ],
],
```
## Create containers
To create and start:
```
cd __WORKDIR__/myapp
./setup.sh
```
Access http://localhost:3000 via browser.

## Access web container
```
docker-compose run --rm web bash
```
