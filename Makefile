labnat: ## Create Env at Labnat
	ansible-playbook site.yml -i inventory/labnat/hosts.ini

home: ## Create Env at Home
	ansible-playbook site.yml -i inventory/hemma/hosts.ini

resetLabnat: ## Reset env at Labnat
	ansible-playbook reset.yml -i inventory/labnat/hosts.ini

resetHome: ## Reset env at Home
	ansible-playbook reset.yml -i inventory/hemma/hosts.ini

help:
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.DEFAULT_GOAL := help
.PHONY: clean help