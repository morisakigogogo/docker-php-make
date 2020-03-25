# 

# feel docker　環境構築手順

# 

# Docker インストール
#### Window: 
Window Pro, Window Enterprise
window Home DockerToolbox
https://docs.docker.com/toolbox/toolbox_install_windows/

#### MAC:
https://docs.docker.com/docker-for-mac/install/

## first:
## copy env.example .env

## 1. init
```
make up #OR
docker-compose up -d nginx workspace
```

## 2. API インストール
```
make api_install #OR
docker-compose exec workspace composer install && docker-compose exec workspace php artisan key:generate
```
## 3. front　インストール
```
make front_install #OR
docker-compose exec workspace npm install && docker-compose exec workspace npm audit fix
```
## 4. watch
```
make watch #OR
docker-compose exec workspace npm run watch
```

## ブラウザ
## http://localhost

## API logs
```
make logs-api #OR
docker-compose logs -f php-fpm
```
## logs all
```
make logs-all #OR
docker-compose logs -f
```
## docker list
```
make ps #OR
docker-compose ps
```