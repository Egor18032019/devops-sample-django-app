# Образ
FROM python:3.8-alpine

# Переменные для приложения
ENV DJANGO_DB_HOST=db \
    DJANGO_DB_NAME=app \
    DJANGO_DB_USER=worker \
    DJANGO_DB_PASS=worker \
    DJANGO_DB_PORT=5432 \
    DJANGO_DEBUG=False

# Рабочая директория
WORKDIR /app

#установка зависимостей
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install setuptools
RUN set -ex \
  && pip install -r requirements.txt \
  && python --version \
  && pip --version

# Копируются файлы
COPY . /app


CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]
