all: x86_64 i686

cacert:
	curl -fsS0 https://curl.haxx.se/ca/cacert.pem -o docker/cacert.pem

x86_64: cacert
	docker build --rm -t clarisys/manylinux2:$@ -f docker/Dockerfile-$@ docker/

i686: cacert
	docker build --rm -t clarisys/manylinux2:$@ -f docker/Dockerfile-$@ docker/
