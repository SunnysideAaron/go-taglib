build:
	@docker compose build go-taglib

bash:
	@docker compose run --remove-orphans --service-ports go-taglib bash

gen:
	@docker compose run --remove-orphans go-taglib go generate ./...

.PHONY: build bash gen
