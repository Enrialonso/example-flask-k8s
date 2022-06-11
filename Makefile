IMAGE_APP_NAME="flask-app"
IMAGE_CONSUMER_NAME="consumer"

# Command for flask app
build-flask-app:
	docker build --rm -t $(IMAGE_APP_NAME) --progress auto -f ./docker/Dockerfile-flask-app .

run-flask-app:
	docker run -it --rm --name $(IMAGE_APP_NAME) -p 8000:8000 $(IMAGE_APP_NAME)


# Commands for consumer
build-consumer:
	docker build --rm -t $(IMAGE_CONSUMER_NAME) -f ./docker/Dockerfile-consumer .

run-consumer:
	docker run -it --rm --name $(IMAGE_CONSUMER_NAME) --env LOCAL=true $(IMAGE_CONSUMER_NAME)