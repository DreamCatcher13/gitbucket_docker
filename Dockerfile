FROM eclipse-temurin:11-jre

RUN apt-get update && apt-get install -y zip

ENV GITBUCKET_HOME=/var/gitbucket

ADD https://github.com/gitbucket/gitbucket/releases/download/4.38.4/gitbucket.war /opt/gitbucket.war

RUN zip -d /opt/gitbucket.war WEB-INF/classes/plugins/*.jar

VOLUME $GITBUCKET_HOME

EXPOSE 8080 29418

CMD [ "sh", "-c", " java -jar /opt/gitbucket.war" ]
