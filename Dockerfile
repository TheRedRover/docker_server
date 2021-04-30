FROM tomcat

RUN mv webapps webapps2

RUN ["mv","webapps.dist/","webapps"]
RUN sed -i "/version=\"1.0\">/a \<role rolename=\"manager-gui\"\/\>\n<role rolename=\"admin-gui\"\/\>\n<role rolename=\"manager-script\"\/\
>\n\<user username=\"theredrover\" password=\"password\" roles=\"manager-gui,manager-script,admin-gui\"\/\>" "tomcat-users.xml"

COPY . webapps/

RUN ["javac", "-cp", ".:lib/servlet-api.jar", "-d", "webapps/myApp/WEB-INF/classes/", "webapps/myApp/src/DisplayImage.java"]


EXPOSE 8080

CMD ["catalina.sh", "run"]
