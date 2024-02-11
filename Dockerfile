# Use official OpenJDK 17 as base image
FROM adoptopenjdk:21-jdk-hotspot

# Set the working directory in the container
WORKDIR /app

# Copy the packaged Spring Boot application JAR file into the container
COPY target/your-application.jar /app/your-application.jar

# Expose the port the application runs on
EXPOSE 8080

# Run the Spring Boot application when the container starts
CMD ["java", "-jar", "your-application.jar"]
