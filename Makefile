compose-up:
	docker-compose up -d

compose-down:
	docker-compose down --remove-orphans || true

compose-build:
	docker-compose build

compose-build-prod:
	docker-compose -f docker-compose.yml build app

compose-push-prod:
	docker-compose -f docker-compose.yml push app

compose-setup: compose-down compose-build

compose-config:
	docker-compose config

compose-tests: compose-down
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
