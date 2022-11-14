FROM eclipse-temurin:8u352-b08-jre

RUN apt-get update && apt-get install -y zip

ADD https://github.com/gitbucket/gitbucket/releases/download/4.38.4/gitbucket.war /opt/gitbucket.war

# Port for web page and Port for SSH access to git repository (Optional)
EXPOSE 8080 29418

RUN zip -d /opt/gitbucket.war WEB-INF/classes/plugins/*.jar

CMD ["sh", "-c", "java -jar /opt/gitbucket.war"]
