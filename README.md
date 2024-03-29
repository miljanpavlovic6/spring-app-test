# Spring app for testing on Linux host, docker or Kubernetes

## Deploying on Linux host

## Deploying on Docker

### Create the local image from Dockerfile
-Dockerfile
```
FROM bellsoft/liberica-openjdk-debian
LABEL "author"="miljan"
LABEL "Date"="09/28/2023"
EXPOSE 8090
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT  ["java","-jar","/app.jar"]
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
## Deploy to docker -> create Linux instance and install docker
```
docker image pull miljanpavlovic/spring-app-test:latest
docker run -d -p 8090:8090 miljanpavlovic/spring-app-test:latest
```

## Deploying on Kubernetes
```
git clone https://github.com/miljanpavlovic6/spring-app-test.git
cd spring-app-test/K8S
kubectl apply -f namespace-dev.yaml
kubectl apply -f k8s-deployment.yaml
kubectl apply -f rolling.yaml
```
