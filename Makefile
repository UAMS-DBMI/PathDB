default: build

build:
	docker build -t quip_pathdb:1.0 .

run:
	docker run --name quip_pathdb --restart unless-stopped -itd -p 80:8080 quip_pathdb:1.0

clean:
	docker stop quip_pathdb
	docker rm quip_pathdb
