# Use OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/medicine-detection-backend-0.0.1-SNAPSHOT.jar app.jar

# Expose the port (Render will map $PORT automatically)
EXPOSE 8080

# Run the Spring Boot app
CMD ["java", "-jar", "app.jar"]
