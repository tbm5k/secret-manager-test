# FROM maven:3.8.4-jdk-11-slim AS build

# WORKDIR /app

# COPY src /app/src
# COPY pom.xml /app/

# RUN mvn -f /app/pom.xml clean package

# #package stage
# FROM openjdk:17.0.1-oracle

# COPY --from=build /app/target/*.jar backend.jar

# CMD ["java", "-jar", "backend.jar"]

FROM openjdk:17-alpine

WORKDIR /app

COPY . ./

ENTRYPOINT [ "./mvnw", "spring-boot:run" ]