FROM openjdk:11-jdk
WORKDIR /app
COPY . .
CMD ["./mvnw", "spring-boot:run"]