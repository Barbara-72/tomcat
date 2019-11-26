FROM registry.sourcesense.com/barbara/tomcat8:latest

MAINTAINER barbara.ammannati@sourcesense.com
ENV CATALINA_HOME /opt/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME/webapps
COPY sparkjava-hello-world-1.0-SNAPSHOT.war /opt/tomcat/webapps/

WORKDIR $CATALINA_HOME/bin
CMD ["catalina.sh", "run"]
