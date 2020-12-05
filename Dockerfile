FROM centos
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -O http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
RUN yum install -y maven
RUN curl -sL https://rpm.nodesource.com/setup_8.x
RUN yum install -y nodejs
RUN npm install -g @angular/cli
RUN sed -i 's/port="8080"/port="7070"/' /opt/tomcat/conf/server.xml
WORKDIR /opt/tomcat/bin
EXPOSE 7070
VOLUME ["/opt/tomcat/two"]
CMD ["./catalina.sh","run"]

