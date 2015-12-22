
build:
	docker build -t docker-shibboleth-sp --build-arg http_proxy --build-arg https_proxy .
