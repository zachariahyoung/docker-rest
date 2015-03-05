FROM dockerfile/java:oracle-java8

MAINTAINER Zach Young

RUN apt-get update
RUN apt-get install -y maven

WORKDIR /code
 
# Prepare by downloading dependencies
ADD pom.xml /code/pom.xml
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]
 
# Adding source, compile and package into a fat jar
ADD src /code/src
RUN ["mvn", "package"]

RUN mkdir /opt/docker-rest
RUN cp target/docker-rest.jar ../../opt/docker-rest

RUN rm -rf ../../code

WORKDIR /
EXPOSE 8080

CMD ["java", "-Xms512m", "-Xmx1g", "-jar","opt/docker-rest/docker-rest.jar"]
