# config-spring-app


## Build a new Jar
`mvn clean package`

## Docker

to use docker daemon in k8 cluster

`eval "$(minikube docker-env)"`


to undo it:

`eval "$(minikube docker-env -u)"`

To build and run Docker image and container:

`docker build -t noemilosada/config-spring-app:latest .`

`docker run -p 8080:8080 noemilosada/config-spring-app:latest`


## Kubernetes deployment

`kubectl create -f app-deployment-config.yml`

`kubectl create -f app-service-config.yml` 