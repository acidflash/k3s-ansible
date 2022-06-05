gavle: ## Create Env at gavle
	ansible-playbook site.yml -i inventory/gavle/hosts.ini

resetGavle: ## Reset env at Home
	ansible-playbook reset.yml -i inventory/gavle/hosts.ini

help:
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.DEFAULT_GOAL := help
.PHONY: clean help