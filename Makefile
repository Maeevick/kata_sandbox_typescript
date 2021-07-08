.PHONY: up install test-all build

CONTAINER_NAME=kata_sandbox_typescript

up:
	@docker-compose up -d

stop:
	@docker-compose down

build: up
	@docker-compose exec $(CONTAINER_NAME) npm run build || $(MAKE) stop
	${MAKE} stop

install: up
	@docker-compose exec $(CONTAINER_NAME) npm install $(ARGS) || $(MAKE) stop
	${MAKE} stop

start: up
	@docker-compose exec $(CONTAINER_NAME) npm start $(ARGS) || $(MAKE) stop
	${MAKE} stop

test: up
	@docker-compose exec $(CONTAINER_NAME) npm run test || $(MAKE) stop
	${MAKE} stop

test-watch: up
	@docker-compose exec $(CONTAINER_NAME) npm run test:watch || $(MAKE) stop
	$(MAKE) stop

test-watch-coverage: up
	@docker-compose exec $(CONTAINER_NAME) npm run test:watch:coverage || $(MAKE) stop
	$(MAKE) stop

test-coverage: up
	@docker-compose exec $(CONTAINER_NAME) npm run test:coverage || $(MAKE) stop
	@docker-compose exec $(CONTAINER_NAME) chown -R node:node reports/coverage
	$(MAKE) stop

test-mutate: up
	@docker-compose exec $(CONTAINER_NAME) npm run test:mutate || $(MAKE) stop
	$(MAKE) stop

test-all: up
	@docker-compose exec $(CONTAINER_NAME) npm run test:all
	$(MAKE) stop

lint-check: up
	@docker-compose exec $(CONTAINER_NAME) npm run lint:check || $(MAKE) stop
	${MAKE} stop
	
lint-fix: up
	@docker-compose exec $(CONTAINER_NAME) npm run lint:fix || $(MAKE) stop
	${MAKE} stop

ci: up
	@docker-compose exec $(CONTAINER_NAME) npm run ci || $(MAKE) stop
	${MAKE} stop