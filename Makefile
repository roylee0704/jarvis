export GOPATH:=$(shell pwd)/vendor
export PATH:=$(PATH):$(GOPATH)


build:
	GOOS=linux GOARCH=amd64 go build -o bot
	docker build -t .
	rm -f bot