FROM tomcat

RUN mv webapps webapps2

RUN ["mv","webapps.dist/","webapps"]

COPY . webapps/

RUN ["javac", "-cp", ".:/usr/local/tomcat/lib/servlet-api.jar", "-d", "webapps/myApp/WEB-INF/classes/", "webapps/myApp/src/DisplayImage.java"]


EXPOSE 8080

CMD ["catalina.sh", "run"]
