FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . .
COPY target/*.jar app.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","/app/app.jar"]
