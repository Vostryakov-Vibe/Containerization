FROM python:3.9-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "main.py"]


# Базовый образ с Python
FROM python:3.9-slim

# Рабочая директория внутри контейнера
WORKDIR /app

# Копируем локальные файлы в контейнер
COPY . .

# Установка библиотек
RUN pip install -r requirements.txt

# Открываем порт 5000 для внешнего мира
EXPOSE 5000

# Команда запуска переименованного файла
CMD ["python", "main.py"]
