FROM openjdk11-jre
WORKDIR /opt/tomcat/
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
EXPOSE 8080
CMD["/opt/tomcat/tomcat9/bin/catalina.sh","run"]
