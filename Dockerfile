FROM archlinux

RUN mkdir /opt/tomcat

RUN wget "https://www2.apache.paket.ua/tomcat/tomcat-9/v9.0.44/bin/apache-tomcat-9.0.44.tar.gz"
RUN tar -zxvf apache-tomcat*
RUN rm -r apache-tomcat*tar.gz*
RUN cd apache-tomcat*/conf

RUN username=$tomcat_server_login
RUN userpassword=$tomcat_server_password

RUN sed -i "/version=\"1.0\">/a \<role rolename=\"manager-gui\"\/\>\n<role rolename=\"admin-gui\"\/\>\n<role rolename=\"manager-script\"\/\
>\n\<user username=\"$username\" password=\"$userpassword\" roles=\"manager-gui,manager-script,admin-gui\"\/\>" "tomcat-users.xml"

RUN ["javac", "-cp", ".:/usr/local/tomcat/lib/servlet-api.jar", "-d", "/usr/local/tomcat/webapps/myApp/WEB-INF/classes/", "/usr/local/tomcat/webapps/myApp/src/DisplayImage.java"]

CMD ["cp","-r","usr/local/tomcat/webapps.dist/*","usr/local/tomcat/webapps/"]

EXPOSE 8080

CMD ["startup.sh"]
