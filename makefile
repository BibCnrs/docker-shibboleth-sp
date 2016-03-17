
build:
	docker build -t bibcnrs/shibboleth-sp --build-arg http_proxy --build-arg https_proxy .
