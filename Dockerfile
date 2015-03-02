FROM ubuntu:latest

MAINTAINER Zach Young

RUN apt-get update

RUN apt-get install oracle-java8-installer
RUN apt-get install maven -y

ADD pom.xml /app/
ADD src/ /app/src/
WORKDIR /app/
RUN mvn package

EXPOSE 8080
WORKDIR /opt/dockerRest/
CMD ["java", "-Xms512m", "-Xmx1g", "-jar", "target/docker-rest.jar"]


