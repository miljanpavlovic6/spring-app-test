FROM openjdk:11
EXPOSE 8090
ARG JAR_FILE=demo-simple-api-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} demo-simple-api-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-simple-api-0.0.1-SNAPSHOT.jar"]
