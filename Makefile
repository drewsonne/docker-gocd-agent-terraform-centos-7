GO_PIPELINE_LABEL?=dev
VERSION?=$(GO_PIPELINE_LABEL)

build:
	docker build -t drewsonne/docker-gocd-agent-terraform-centos:$(VERSION) .

push:
	docker push drewsonne/docker-gocd-agent-terraform-centos:$(VERSION)

publish: build push
