FROM bellsoft/liberica-openjdk-debian
LABEL "author"="miljan"
LABEL "Date"="09/28/2023"
EXPOSE 8090
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT  ["java","-jar","/app.jar"]