# Étape 1 : Construction
FROM maven:3.9.0-eclipse-temurin-8 AS build

# Fix JAVA_HOME manuellement
ENV JAVA_HOME=/usr/local/openjdk-8
ENV PATH="$JAVA_HOME/bin:$PATH"

WORKDIR /build
COPY . .
RUN echo "JAVA_HOME=$JAVA_HOME" && java -version && mvn clean package -DskipTests

# Étape 2 : Runtime
FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY --from=build /build/target/gestion-station-ski-1.0.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
