# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file built by Maven/Gradle into the container
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java","-jar","/app.jar"]
