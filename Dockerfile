FROM tomcat:8
COPY /target/*.war /usr/local/tomcat/webapps/onlinebookstore-0.0.1.war


