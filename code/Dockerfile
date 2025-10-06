FROM eclipse-temurin:17-jdk

# Рабочая директория для сервера
WORKDIR /data

# Копируем из /code все нужное
COPY /code/spigot-1.20.1.jar /data/
COPY /code/world /data/

# Открываем порт Minecraft
EXPOSE 25565

# Память
ENV MEMORY=2G

# Запуск сервера
CMD ["sh", "-c", "java -Xms${MEMORY} -Xmx${MEMORY} -jar spigot-1.20.1.jar nogui"]
