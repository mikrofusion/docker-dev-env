run: build
	docker-compose up

build:
	docker build -t devbox-base .

rebuild:
	docker build --no-cache -t devbox-base --pull=true .

clean:
	docker kill devbox-base
	docker rm devbox-base
	docker rmi devbox-base

push:
	docker tag devbox-base mikrofusion/docker-devbox-base
	docker push mikrofusion/docker-devbox-base

publish: rebuild push
