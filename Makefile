.PHONY: build push

build:
	docker build -t docker.io/shuguet/openconnect-udm:latest .

push:
	docker push docker.io/shuguet/openconnect-udm:latest