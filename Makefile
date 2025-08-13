IMAGE_NAME = boto3-starter

build:
	docker build -t $(IMAGE_NAME) -f docker/Dockerfile .

run:
	docker run --rm --env-file .env.example -v $(PWD)/src:/app $(IMAGE_NAME)

clean:
	docker rm -f $(docker ps -aq) || true
	docker rmi -f $(docker images -q $(IMAGE_NAME)) || true
