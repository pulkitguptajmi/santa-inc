ARG WAR_FILE

FROM tomcat:9.0.37-jdk8-openjdk
ADD ${WAR_FILE} /usr/local/tomcat/webapps/

COPY server.xml /usr/local/tomcat/conf/
COPY web.xml /usr/local/tomcat/conf/

ENV TZ Asia/Kolkata

EXPOSE 8080 8000 8443
CMD ["catalina.sh", "jpda", "run", ">", "/usr/local/tomcat/logs/catalina.out"]