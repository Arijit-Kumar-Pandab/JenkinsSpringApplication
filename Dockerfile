FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . .
EXPOSE 8081
ENTRYPOINT ["java","-jar","/app/app.jar"]
