FROM tomcat:9-alpine
ADD http://54.251.12.137:8081/artifactory/customer_repo1/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]
