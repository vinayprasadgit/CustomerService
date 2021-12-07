FROM tomcat:9-alpine
WORKDIR /root/
ADD http://54.251.12.137:8081/artifactory/customer_repo1/customerservice.war .
EXPOSE 8080
CMD ["catalina.sh","run"]
