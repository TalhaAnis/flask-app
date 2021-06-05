apply:
	kubectl apply -f .
delete:
	kubectl delete deploy flask-dp
	kubectl delete svc flask-svc
	kubectl delete ingress flask-in

docker:
	docker build -t talhaanis1234/flask-app:latest . 
	docker push talhaanis1234/flask-app:latest