up:
	docker-compose up -d nginx workspace
restart:
	docker-compose restart
build:
	docker-compose up -d --build nginx workspace
down:
	docker-compose down
ps:
	docker-compose ps
logs:
	docker-compose logs -f
api_logs:
	docker-compose logs -f php-fpm
api_install:
	docker-compose exec workspace composer install && docker-compose exec workspace php artisan key:generate
# api_key:
# 	docker-compose exec workspace php artisan key:generate
api_restart:
	docker-compose restart php-fpm
front_install:
	docker-compose exec workspace npm install && docker-compose exec workspace npm audit fix
watch:
	docker-compose exec workspace npm run watch