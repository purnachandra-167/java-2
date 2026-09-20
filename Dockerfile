FROM  maven:3.9-eclipse-temurin-17
#
USER root
WORKDIR /app/java

COPY . .
RUN ls -ltr

RUN  mvn package
RUN ls -ltR
CMD [java -jar target/order-service-0.0.1-SNAPSHOT.jar]
