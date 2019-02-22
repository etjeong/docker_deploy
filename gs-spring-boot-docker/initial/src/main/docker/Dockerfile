FROM openjdk:8-jdk-alpine
MAINTAINER euitak.jeong <etjeong0320@naver.com>
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
