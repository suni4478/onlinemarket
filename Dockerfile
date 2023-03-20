FROM openjdk11-jre
WORKDIR /opt/tomcat/
COPY ..
EXPOSE 8080
CMD["/opt/tomcat/tomcat9/bin/catalina.sh","run"]
