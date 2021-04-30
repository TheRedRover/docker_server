FROM archlinux

RUN mkdir /opt/tomcat

RUN pacman -Syu jdk-openjdk
RUN wget "https://www2.apache.paket.ua/tomcat/tomcat-9/v9.0.44/bin/apache-tomcat-9.0.44.tar.gz"
RUN tar -zxvf apache-tomcat*
RUN rm -r apache-tomcat*tar.gz*
RUN mv apache-tomcat* /opt/tomcat/.

RUN cd apache-tomcat*/conf

RUN username="theredrover"

RUN userpassword="password"

RUN sed -i "/version=\"1.0\">/a \<role rolename=\"manager-gui\"\/\>\n<role rolename=\"admin-gui\"\/\>\n<role rolename=\"manager-script\"\/\
>\n\<user username=\"$username\" password=\"$userpassword\" roles=\"manager-gui,manager-script,admin-gui\"\/\>" "tomcat-users.xml"

RUN ["javac", "-cp", ".:/opt/tomcat/lib/servlet-api.jar", "-d", "/opt/tomcat/webapps/myApp/WEB-INF/classes/", "/opt/tomcat/webapps/myApp/src/DisplayImage.java"]

CMD ["cp","-r","opt/tomcat/webapps.dist/*","opt/tomcat/webapps/"]

WORKDIR /opt/tomcat/webapps

EXPOSE 8080

CMD ["startup.sh"]
