
.PHONY: all pull server clean add-server

all: pull server

pull:
	docker pull buildpack-deps:stretch-curl
	docker pull buildpack-deps:stretch

server:
	docker build -t build-jre9 server/
	docker run --rm build-jre9 cat /rootfs.tar.xz > debian/rootfs.tar.xz
	docker build -t sidereal/jre9 debian/

clean:
	rm -f debian/rootfs.tar.xz

add-server:
	git add -f debian/rootfs.tar.xz

