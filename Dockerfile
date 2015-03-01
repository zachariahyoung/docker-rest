FROM dockerfile/java:oracle-java8

ADD docker-rest.jar /opt/dockerRest/
EXPOSE 8080
WORKDIR /opt/dockerRest/
CMD ["java", "-Xms512m", "-Xmx1g", "-jar", "docker-rest.jar"]
