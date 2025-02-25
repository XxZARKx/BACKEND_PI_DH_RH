FROM openjdk:21-slim

WORKDIR /src

COPY target/DH_project.jar src.jar

EXPOSE ${PORT}

ENTRYPOINT ["java", "-jar", "src.jar"]
