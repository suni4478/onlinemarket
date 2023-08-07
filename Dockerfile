FROM tomcat:8.0.20-jre8
COPY /target/*.war /usr/local/tomcat/webapps/onlinebookstore-0.0.1.war


FROM openjdk:8
EXPOSE 8080
ADD target/onlinebookstore-0.0.1.war onlinebookstore-0.0.1.war
ENTRYPOINT["java","-jar","onlinebookstore-0.0.1.war"]

