NAME = php-analyzer

define echo
	@echo "\033[33m$(1)\033[0m"
endef

default: clean build

build:
	$(call echo,starting build of $(NAME))
	docker build -t $(NAME) .
	docker create --name $(NAME) $(NAME)

clean:
	@$(call echo,removing container of $(NAME))
	-@docker rm -fv $(NAME)
	-@docker rmi -f $(NAME)
