build:
	@docker compose build go-taglib

bash:
	@docker compose run --remove-orphans --service-ports go-taglib bash

.PHONY: build bash
