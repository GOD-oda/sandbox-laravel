.PHONY: build
build:
	docker compose build --force-rm --no-cache

.PHONY: down
down:
	docker compose down -v --remove-orphans

.PHONY: up
up:
	docker compose up -d

.PHONY: restart
restart:
	@make down
	@make up

.PHONY: setup
setup:
	mkdir -p src
	@make build
	@make up
	docker compose exec app composer install
	docker compose exec app cp .env.example .env
	docker compose exec app php artisan key:generate
	docker compose exec app php artisan storage:link

.PHONY: rebuild
rebuild:
	docker compose down -v --remove-orphans --rmi all
	@make build
