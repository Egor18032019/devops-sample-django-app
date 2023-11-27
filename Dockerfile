FROM python:3.8

ENV PYTHONUNBUFFERED=1\
    # чтобы логи нормально вылезали из контейнера
    PYTHONDONTWRITEBYTECODE=1
    #кэш питон-кода
WORKDIR /app

# копируем всё
COPY . /app/.
RUN ls -1
RUN pip install uwsgi

COPY uwsgi.ini ./uwsgi.ini


RUN set -ex \
  && pip install --upgrade pip \
  && pip install -r requirements.txt \
  && python --version \
  && pip --version
