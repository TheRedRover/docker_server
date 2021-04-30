FROM tomcat


RUN mv /usr/local/tomcat/webapps /usr/local/tomcat/webapps2 
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps

COPY . /usr/local/tomcat/webapps/

# ADD tomcat-users.xml /usr/local/tomcat/conf/
# ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/


RUN ["javac", "-cp", ".:/usr/local/tomcat/lib/servlet-api.jar", "-d", "/usr/local/tomcat/webapps/myApp/WEB-INF/classes/", "/usr/local/tomcat/webapps/myApp/src/DisplayImage.java"]

EXPOSE 8080

CMD ["catalina.sh", "run"]
