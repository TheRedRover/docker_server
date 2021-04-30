FROM tomcat

COPY . /usr/local/tomcat/webapps/

RUN ["javac", "-cp", ".:/usr/local/tomcat/lib/servlet-api.jar", "-d", "/usr/local/tomcat/webapps/myApp/WEB-INF/classes/", "/usr/local/tomcat/webapps/myApp/src/DisplayImage.java"]

CMD ["cp","-r","usr/local/tomcat/webapps.dist/*","usr/local/tomcat/webapps/"]

EXPOSE 8080

CMD ["startup.sh"]
