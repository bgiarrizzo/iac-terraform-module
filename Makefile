.DEFAULT_GOAL := help

.PHONY: help
help:
    @grep -E '(^[a-zA-Z0-9_-]+:.*?##)|(^##)' $(firstword $(MAKEFILE_LIST)) | awk 'BEGIN {FS = ":.*?## "; printf "Usage: make \033[32m<target>\033[0m\n"}{printf "\033[32m%-20s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m## /\n[33m/'

.PHONY: init
init: ## Run a terraform init inside the terraform container. Usage: make init
	@echo "Running terraform init"
	docker compose run --rm terraform init

.PHONY: plan
plan: ## Run a terraform plan inside the terraform container. Usage: make plan
	@echo "Running terraform plan"
	docker compose run --rm terraform plan

.PHONY: apply
apply: ## Run a terraform apply inside the terraform container. Usage: make apply
	@echo "Running terraform apply"
	docker compose run --rm terraform apply