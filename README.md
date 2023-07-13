# Spring app for testing on Linux host, docker or Kubernetes

## Deploying on Linux host

## Deploying on Docker

### Create the local image from Dockerfile
-Dockerfile
```
FROM openjdk:8-jdk-alpine
EXPOSE 8090
ARG JAR_FILE=app-test-1.jar
ADD ${JAR_FILE} app-test-1.jar
ENTRYPOINT ["java","-jar","/app-test-1.jar"]
```
Execute and test locally
```
docker build --tag=spring-app-test:latest .
docker run -p 8090:8090 spring-app-test:latest
```
-and push to docker hub
```
docker login -u miljanpavlovic -p <password>
docker tag spring-app-test:latest miljanpavlovic/spring-app-test:latest
docker push miljanpavlovic/spring-app-test:latest
```


## Deploying on Kubernetes
```
git clone ...
cd spring-app-test/K8S
kubectl apply -f namespace-dev.yaml
kubectl apply -f k8s-deployment.yaml
kubectl apply -f rolling.yaml
```
