FROM maven:3.8.6-openjdk-11-slim as builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests -x

FROM openjdk:11-jdk-slim
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","/app/app.jar"]
