# syntax=docker/dockerfile:1
FROM openjdk:18-alpine3.13
COPY ./ /tmp
ENV CLASSPATH=tmp/src/main/java/libs/*:${CLASSPATH}
ENTRYPOINT ["java", "tmp/src/main/java/converter/Main.java"]

