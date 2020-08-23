build:
	docker build -t docker-set-container-user-not-root .
run:
	docker run --name container-vaska -d --rm -p 8080:8080 docker-set-container-user-not-root
health:
	curl "http://127.0.0.1:8080/"
proc-list:
	docker exec -it container-vaska ps aux
stop:
	docker stop container-vaska
