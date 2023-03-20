FROM openjdk11-jre
WORKDIR /opt/tomcat/
COPY onlinebookstore-0.0.1.war
EXPOSE 8080
CMD["/opt/tomcat/tomcat9/bin/catalina.sh","run"]
