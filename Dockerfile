# Utilise l'image Java officielle
FROM eclipse-temurin:21-jdk-jammy

# Crée un dossier pour l'application
WORKDIR /app

# Copie le jar compilé dans le conteneur
COPY target/democyber-0.0.1-SNAPSHOT.jar app.jar

# Expose le port 8080
EXPOSE 8080

# Commande pour lancer l'application
ENTRYPOINT ["java","-jar","app.jar"]
