
build:
	docker build -t vsnexus-registry.intra.inist.fr:8083/bibcnrs/shibboleth-sp3 --build-arg http_proxy --build-arg https_proxy .
