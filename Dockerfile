# Step 2: Package the application into a Docker image
# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file from the build stage
COPY build/libs/*.jar app.jar

# Expose the port the application runs on
EXPOSE 9000

# Define the command to run the application : entry point==main method
ENTRYPOINT ["java", "-jar", "app.jar"]
