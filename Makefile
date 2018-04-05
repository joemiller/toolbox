IMAGE := joemiller/toolbox
TAG := dev

build: ## build docker container
	docker build -t $(IMAGE):$(TAG) .

push: ## push docker container to docker hub registry
	docker push $(IMAGE):$(TAG)
