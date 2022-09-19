.PHONY: help build up down restart exec logs ps article book

help: ## Show options
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

build: ## Build docker container
	docker compose build

up: ## Do docker compose up in detached mode
	docker compose up -d

down: ## Do docker compose down
	docker compose down

restart: down up ## Do docker compose restart

exec: up ## Execute a command in a running app container
	docker compose exec -it app ash

logs: ## Tail docker compose logs
	docker compose logs -f

ps: ## Check container status
	docker compose ps

article: ## Create a new article
	docker compose exec app npx zenn new:article

book: ## Create a new book
	docker compose exec app npx zenn new:book
