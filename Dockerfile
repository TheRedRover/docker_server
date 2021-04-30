FROM tomcat

COPY . /tomcat/webapps/

RUN ["javac", "-cp", ".:/tomcat/lib/servlet-api.jar", "-d", "/tomcat/webapps/myApp/WEB-INF/classes/", "/tomcat/webapps/myApp/src/DisplayImage.java"]

CMD ["cp","/tomcat/webapps.dist/*","/tomcat/webapps/"]

EXPOSE 8080

CMD ["catalina.sh", "run"]
