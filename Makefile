.PHONY: dev

MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PWD := $(shell echo $(dir $(MAKEPATH)) | awk '{ gsub("/$$",""); }1')
PROJECT := $(shell echo $(PWD) | awk '{ gsub("/$$",""); }1' | awk '{ n=split($$0,a,"/"); print(a[n]); }' )
BRANCH := $(shell git for-each-ref --format='%(objectname) %(refname:short)' refs/heads | awk "/^$$(git rev-parse HEAD)/ {print \$$2}")
SHORT_HASH := $(shell git rev-parse --short HEAD)

dev:
	docker run -i -t \
		--rm \
		--name=$(PROJECT) \
		-v $(PWD):/usr/share/nginx/html:ro \
		-p 8000:80 \
		nginx:alpine \
