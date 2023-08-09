.PHONY: help

help:
# credits:
# http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
# http://github.com/jupyter/docker-stacks
	@echo "Container build"
	@echo "====================="
	@echo "Run one of the commands below with the 'make ...' command, i.e. 'make dev'."
	@echo
	@grep -E '^[a-zA-Z0-9_%/-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

to-repo: ## Copy current settings of this machine into this repository.
	cp ~/.config/starship.toml .

deploy: ## Deploy repository settings to this machine.
	cp ./starship.toml ~/.config/