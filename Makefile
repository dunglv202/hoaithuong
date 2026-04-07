config:
	@cp --update=none ./docker/application-example.yaml ./docker/application.yaml
	@cp --update=none ./docker/.env.example ./docker/.env
	@cp --update=none ./docker/nginx-example.conf ./docker/nginx.conf
	@echo "Configs are located in: './docker'. Might update required fields before start the app"

start:
	@docker compose -f ./docker/docker-compose.yaml up -d

.PHONY: config start