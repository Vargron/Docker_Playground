eval $(minikube docker-env)
docker build -t hello-node:v1 .
kubectl run hello-node --image=hello-node:v1 --port=8080 --image-pull-policy=Never
kubectl expose deployment hello-node --type=LoadBalancer
minikube service hello-node