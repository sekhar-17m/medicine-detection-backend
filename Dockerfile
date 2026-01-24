# Use a valid Java 17 base image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy the built JAR file into the container
COPY target/medicine-backend-1.0.0.jar app.jar


# Expose the port (Render uses $PORT)
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "app.jar"]
