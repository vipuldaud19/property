# ---- 1. Build Stage ----
FROM eclipse-temurin:23-jdk AS build

WORKDIR /app

# Copy only pom.xml first to leverage Docker cache
COPY pom.xml .

# Install Maven (since you don't have mvnw)
RUN apt-get update && apt-get install -y maven

# Download dependencies offline
RUN mvn dependency:go-offline

# Copy full project source
COPY src src

# Build the WAR file
RUN mvn clean package -DskipTests

# ---- 2. Runtime Stage ----
FROM eclipse-temurin:23-jre

WORKDIR /app

# Copy WAR file from build stage
COPY --from=build /app/target/*.war app.war

# Expose the port Render will use
ENV PORT=8080
EXPOSE 8080

# Start the app
ENTRYPOINT ["java", "-jar", "app.war"]
