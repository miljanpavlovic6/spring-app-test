FROM openjdk:8-jdk-alpine
EXPOSE 8090
ARG JAR_FILE=app-test-1.jar
ADD ${JAR_FILE} app-test-1.jar
ENTRYPOINT ["java","-jar","/app-test-1.jar"]
