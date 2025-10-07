FROM openjdk:17-jdk-slim

WORKDIR /code
COPY . .

EXPOSE 25565 27017


CMD ["java", "-jar", "spigot-1.20.1.jar", "-nogui"]