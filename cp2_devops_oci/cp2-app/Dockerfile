FROM eclipse-temurin:17-jre

WORKDIR /app

COPY target/cp2-app-1.0.0.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-Xmx192m", "-jar", "app.jar"]