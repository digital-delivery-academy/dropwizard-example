FROM openjdk:8

CMD mvn clean package

ADD target/dropwizard-example-1.2.1-SNAPSHOT.jar sample-app.jar

ADD example.yml sample-app.yml

CMD java -jar sample-app.jar server sample-app.yml

EXPOSE 8080
