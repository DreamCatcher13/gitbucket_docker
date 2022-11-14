FROM tomcat:9.0-jre11-temurin

RUN apt-get update && apt-get install -y zip
ENV GITBUCKET_HOME=/var/gitbucket
RUN rm -rf /usr/local/tomcat/webapps/ROOT
ADD https://github.com/gitbucket/gitbucket/releases/download/4.38.4/gitbucket.war /opt/gitbucket.war
RUN zip -d /opt/gitbucket.war WEB-INF/classes/plugins/*.jar
RUN mv /opt/gitbucket.war /usr/local/tomcat/webapps/ROOT.war
VOLUME $GITBUCKET_HOME
EXPOSE 8080 29418
CMD [ "/usr/local/tomcat/bin/catalina.sh", "run" ]
