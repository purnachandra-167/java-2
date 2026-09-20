FROM  maven:3.9-eclipse-temurin-1
#
USER root
WORKDIR /app/java

COPY . .
RUN ls -ltr

RUN  mvn package
RUN ls -ltR
