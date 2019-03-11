#!/bin/bash

mvn clean package
docker build -t noemilosada/config-spring-app:latest .

kubectl delete service config-spring-app
kubectl delete deployment config-spring-app

kubectl create -f app-deployment-config.yml
kubectl create -f app-service-config.yml