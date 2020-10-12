FROM docker.io/library/tomcat:latest
RUN sed -i 's/8080/4200/g' /usr/local/tomcat/conf/server.xml
COPY dist /usr/local/tomcat/webapps/
RUN chmod 755 /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
