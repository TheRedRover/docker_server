FROM tomcat

COPY . /usr/local/tomcat/webapps/

#RUN ["javac", "-cp", ".:/usr/local/tomcat/lib/servlet-api.jar", "-d", "/usr/local/tomcat/webapps/myApp/WEB-INF/classes/", "/usr/local/tomcat/webapps/myApp/src/DisplayImage.java"]

CMD ["mv","webapps.dist/","webapps/"]

EXPOSE 8080

CMD ["catalina.sh", "run"]
