# Используем официальный образ с Java 17 (Spigot 1.20.1 требует как минимум Java 17)
FROM eclipse-temurin:17-jdk

# Устанавливаем рабочую директорию
WORKDIR /server

# Копируем серверный jar
COPY spigot-1.20.1.jar /server/spigot.jar

# Копируем eula.txt
COPY eula.txt /server/eula.txt

# Создаём директорию для мира и плагинов
RUN mkdir -p /server/world /server/plugins

# Открываем порт Minecraft
EXPOSE 25565

# Настраиваем переменные окружения
ENV MEMORY=2G

# Команда запуска
CMD ["sh", "-c", "java -Xms${MEMORY} -Xmx${MEMORY} -jar spigot.jar nogui"]
