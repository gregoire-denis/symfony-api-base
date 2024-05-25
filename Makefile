install: 
	docker compose up -d
	docker exec symfony-base-api-fpm composer install

start:
	docker compose up -d

shell: 
	@docker exec -it symfony-base-api-fpm /bin/bash

cache-clear:
	@docker exec symfony-base-api-fpm bin/console cache:clear