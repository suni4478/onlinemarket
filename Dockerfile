FROM tomcat:8
COPY onlinemarket_deploy/target/*.war /usr/local/tomcat/webapps/onlinebookstore-0.0.1.war
EXPOSE 8080

