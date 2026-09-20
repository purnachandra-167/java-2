FROM  maven:3.9-eclipse-temurin-17
#
USER root
WORKDIR /app/java

COPY . .
RUN ls -ltr

RUN  mvn package
RUN ls -ltR
CMD [java -jar /app/java/server/target/server.jar]
