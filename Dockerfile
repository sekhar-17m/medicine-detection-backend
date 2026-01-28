FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

RUN chmod +x mvnw

# Build and repackage fat JAR explicitly
RUN ./mvnw clean package spring-boot:repackage -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/medicine-backend-1.0.0.jar"]
