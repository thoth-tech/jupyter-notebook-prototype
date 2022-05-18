# syntax=docker/dockerfile:1
# to build: <winpty> docker run -i -t <image-name> r

FROM openjdk:18-alpine3.13
COPY ./src/main/ .

ENV CLASSPATH=java/libs/*:${CLASSPATH}

RUN javac java/converter/Main.java

ENTRYPOINT ["java", "java/converter/Main.java"]

