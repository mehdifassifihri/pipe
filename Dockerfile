FROM maven:3.9.6-openjdk-21 AS Builder
WORKDIR ./src ./src
COPY ./pom.xml .
RUN mvn clean package


FROM openjdk:21-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]