｀｀｀

feel docker　環境構築手順

｀｀｀
first:
copy env.example .env

## 1. init
make up
docker-compose up -d nginx workspace

## 2. API インストール
make api_install
docker-compose exec workspace composer install && docker-compose exec workspace php artisan key:generate
## 3. front　インストール
make front_install
docker-compose exec workspace npm install && docker-compose exec workspace npm audit fix
## 4. watch
make watch
docker-compose exec workspace npm run watch

``` アクセス
http://localhost
```

## API logs
make logs-api
docker-compose logs -f php-fpm
## logs all
make logs-all
docker-compose logs -f
## docker list
make ps
docker-compose ps