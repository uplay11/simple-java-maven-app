FROM maven:3.9.6-eclipse-temurin-21

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn -B clean package -DskipTests

CMD ["java", "-jar", "target/my-app-1.0-SNAPSHOT.jar"]
