# FROM maven:3.6.3-jdk-11
FROM openjdk:8-jdk-alpine as build
ARG VERSION=3.8.3
WORKDIR /app
RUN wget https://downloads.apache.org/maven/maven-3/$VERSION/binaries/apache-maven-$VERSION-bin.zip
RUN unzip apache-maven-$VERSION-bin.zip
RUN rm -rf apache-maven-$VERSION-bin.zip
ENV MAVEN_HOME=/app/apache-maven-$VERSION
ENV PATH="$MAVEN_HOME/bin:$PATH"
COPY . .
# RUN mvn -N io.takari:maven:0.7.7:wrapper
# RUN ./mvnw spring-boot:run
# RUN ls -la target/
