FROM tomcat

RUN mv webapps webapps2

RUN ["mv","webapps.dist/","webapps"]

COPY . /usr/local/tomcat/webapps/

#RUN ["javac", "-cp", ".:/usr/local/tomcat/lib/servlet-api.jar", "-d", "/usr/local/tomcat/webapps/myApp/WEB-INF/classes/", "/usr/local/tomcat/webapps/myApp/src/DisplayImage.java"]


EXPOSE 8080

CMD ["catalina.sh", "run"]
