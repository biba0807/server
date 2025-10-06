# Используем официальный образ с Java 17 (Spigot 1.20.1 требует как минимум Java 17)
FROM eclipse-temurin:17-jdk

# Устанавливаем рабочую директорию
WORKDIR /data

# Копируем всё из текущей директории в /data
COPY . /data

# Открываем порт Minecraft
EXPOSE 25565

# Настраиваем переменные окружения
ENV MEMORY=2G

# Команда запуска
CMD ["sh", "-c", "java -Xms${MEMORY} -Xmx${MEMORY} -jar spigot.jar nogui"]
