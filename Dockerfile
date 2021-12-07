FROM tomcat:9-alpine
WORKDIR /root/
ADD http://172.31.18.29:8081/artifactory/customer_repo1/customerService-1.0-SNAPSHOT.war /usr/local/tomcat/webapps
RUN rm -f /usr/local/tomcat/conf/tomcat-user.xml
COPY tomcat-users.xml /usr/local/tomcat/conf/
RUN rm -f /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
EXPOSE 8080
CMD ["catalina.sh","run"]
