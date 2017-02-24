NAME = zeroae/ap-kerberos
VERSION = 0.1.0

.PHONY: all build build-nocache

all: build

build:
	docker build -t $(NAME) --rm .

build-nocache:
	docker build -t $(NAME) --no-cache --rm .
