# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the built application jar from Gradle build output
COPY build/libs/*.jar app.jar

# Command to run the application
CMD ["java", "-jar", "app.jar"]
