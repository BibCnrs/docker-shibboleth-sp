
build:
	docker build -t vxnexus-registry.intra.inist.fr:8083/bibcnrs/shibboleth-sp3:2.0 --build-arg http_proxy --build-arg https_proxy .
