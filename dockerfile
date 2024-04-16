FROM ubuntu
RUN apt-get update -y && apt-get install curl -y && apt-get install java* -y && apt-get install zip -y
RUN curl -O  https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87.zip
RUN unzip apache-tomcat-9.0.87.zip
RUN chmod 700 /apache-tomcat-9.0.87/bin/catalina.sh
EXPOSE 8080
CMD ["./apache-tomcat-9.0.87/bin/catalina.sh", "run"]
