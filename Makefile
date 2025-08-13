.DEFAULT_GOAL := help

IMAGE_NAME = boto3-starter

build:
	docker build -t $(IMAGE_NAME) -f docker/Dockerfile .

run-windows:
	@ docker run --rm   --env-file .env   -v "$(CURDIR)/src:/app/src"   boto3-starter

run: #run linux
	@ docker run --rm   --env-file .env   -v "$(pwd)/src:/app/src"   boto3-starter
