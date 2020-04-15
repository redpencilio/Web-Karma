FROM maven:3-jdk-8
COPY . /app
RUN cd /app && mvn clean install -Dmaven.test.skip=true
WORKDIR /app/karma-web
ENV KARMA_USER_HOME="/data"
EXPOSE 8080
CMD ["mvn","jetty:run"]
