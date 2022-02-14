default: build

build:
	docker build . -t docker-registry-default.apps.dbmi.cloud/pathdb/pathdb:latest

push:
	docker push docker-registry-default.apps.dbmi.cloud/pathdb/pathdb:latest

pods:
	oc get pod -l io.kompose.service=pathdb