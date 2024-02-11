# Use OpenJDK 17 as the base image
FROM adoptopenjdk/openjdk17:alpine-jre

# Set the working directory in the container
WORKDIR /app

# Copy the packaged jar file into the container at the defined working directory
COPY target/your-spring-boot-app.jar /app/your-spring-boot-app.jar

# Expose the port that the Spring Boot application will run on
EXPOSE 8085

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "your-spring-boot-app.jar"]
