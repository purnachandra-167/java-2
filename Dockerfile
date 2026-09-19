FROM maven:3.8.3-openjdk-17-slim
#
USER root
WORKDIR /app/java

COPY . .
RUN ls -ltr

RUN  mvn package
RUN ls -ltR
CMD ["/bin/sh", "-c", "java -jar XX"]

