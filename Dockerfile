FROM openjdk:8
EXPOSE 8081
ADD target/customerservice.war customerservice.war
