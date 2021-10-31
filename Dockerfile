FROM openjdk:11-jdk
WORKDIR /app
RUN apt update
RUN apt upgrade -y
COPY . .
CMD ["./mvnw", "spring-boot:run"]