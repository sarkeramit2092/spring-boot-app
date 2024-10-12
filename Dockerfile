FROM openjdk:8-jdk-alpine

# Define the JAR file location
ARG JAR_FILE=target/spring-boot-app-1.0.0.jar

# Copy the JAR file into the Docker container
COPY ${JAR_FILE} app.jar

# Expose the port your app will run on
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java","-jar","/app.jar"]

