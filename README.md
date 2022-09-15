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
## Setup App
edit `__WORKDIR__/myapp/config/app_local.php` as below.

### database
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

### mail

```
'EmailTransport' => [
    ...
    'local' => [
        'className' => 'Smtp',
        'host' => 'mailhog',
        'port' => 1025,
        'timeout' => 30,
        'tls' => null,
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

## Customize

### web 
To change http port, edit `.env`.
```
WEB_PORT=8888
```

### database
To change database name, user name or user password, edit `docker/db/db_init/00_init.sql`.

### mail
To change mailhog web client port, edit `.env`.
```
MAILHOG_WEB_PORT=8888
```

See `.env.example`.
