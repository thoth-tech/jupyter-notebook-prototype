# syntax=docker/dockerfile:1
FROM openjdk:18-alpine3.13
COPY ./src/main/ .
ENV CLASSPATH=java/libs/*:${CLASSPATH}
ENTRYPOINT ["java", "java/converter/Main.java"]

