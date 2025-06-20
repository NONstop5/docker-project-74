compose-up:
	docker compose up -d

compose-down:
	docker compose down --remove-orphans

compose-setup:
	docker compose run --rm app make setup

compose-ps:
	docker compose ps

compose-build:
	docker compose build

compose-build-prod:
	docker compose -f docker-compose.yml build app

compose-push-prod:
	docker compose -f docker-compose.yml push app

compose-config:
	docker compose config

compose-test-ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit

env-prepare:
	cp -n .env.example .env

compose-clean:
	docker compose down -v --remove-orphans
