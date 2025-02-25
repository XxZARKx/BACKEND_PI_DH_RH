FROM maven:3.8.7-openjdk-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:21-jdk-slim
WORKDIR /app
EXPOSE 8080
COPY --from=build /target/DH_project-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
