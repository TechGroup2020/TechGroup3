FROM centos
RUN mkdir /opt/one
RUN cp -a -f /var/lib/jenkins/workspace/Frontend/dist/. /opt/one/
WORKDIR /opt/tomcat


