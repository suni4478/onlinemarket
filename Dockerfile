FROM openjdk11-jre
WORKDIR /opt/tomcat/
COPY target/*.war /usr/local/tomcat/webapps/onlinebookstore-0.0.1.war
EXPOSE 8080
CMD["/opt/tomcat/tomcat9/bin/catalina.sh","run"]
