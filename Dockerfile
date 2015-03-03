FROM dockerfile/java:oracle-java8

MAINTAINER Zach Young

RUN apt-get update

RUN apt-get install maven3 -y

ADD pom.xml /app/
ADD src/ /app/src/
WORKDIR /app/
RUN mvn package

EXPOSE 8080
WORKDIR /opt/dockerRest/
CMD ["java", "-Xms512m", "-Xmx1g", "-jar", "target/docker-rest.jar"]


