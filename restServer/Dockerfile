FROM adoptopenjdk/openjdk13:jdk-13.0.2_8-ubuntu-slim
RUN mkdir /opt/app
COPY restServer.jar /opt/app/restServer.jar
COPY application.properties /opt/app
COPY tomcat.https.properties /opt/app
COPY restServer.jks /root/
WORKDIR /opt/app
EXPOSE 1080
EXPOSE 8081
CMD ["java","-Dtomcat.properties=/opt/app/tomcat.https.properties","-jar", "/opt/app/restServer.jar"]
