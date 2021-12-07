FROM tomcat:9-alpine
WORKDIR /root/
ADD http://172.31.18.29:8081/artifactory/customer_repo1/customerservice.war .
EXPOSE 8080
CMD ["catalina.sh","run"]
