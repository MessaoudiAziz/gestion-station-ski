# Utiliser l'image officielle OpenJDK comme base
FROM openjdk:17-jre-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier JAR dans l'image
COPY target/gestion-station-ski-1.0.jar app.jar

# Exposer le port de l'application
EXPOSE 8089

# Commande pour exécuter l'application
CMD ["java", "-jar", "app.jar"]