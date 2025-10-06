FROM eclipse-temurin:17-jdk

# Исходники приложения находятся в /code
WORKDIR /data

# Копируем jar из /code в /data
COPY /code/spigot-1.20.1.jar /data/
COPY /code/world /data/


# Открываем порт Minecraft
EXPOSE 25565

# Настраиваем переменные окружения
ENV MEMORY=2G

# Команда запуска
CMD ["sh", "-c", "java -Xms${MEMORY} -Xmx${MEMORY} -jar spigot-1.20.1.jar nogui"]
