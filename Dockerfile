FROM eclipse-temurin:17-jdk

WORKDIR /app

# Copy everything including Maven wrapper
COPY . .

# Make Maven wrapper executable
RUN chmod +x mvnw

# Build the Spring Boot fat JAR
RUN ./mvnw clean package -DskipTests

EXPOSE 8080

# Run the fat JAR
CMD ["java", "-jar", "target/medicine-backend-1.0.0.jar"]
