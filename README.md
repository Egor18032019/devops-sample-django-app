# На пк должен быть установлен git,docker и docker-compose.
## Запуск
1. Скачать (git clone https://github.com/Egor18032019/devops-sample-django-app.git) 
2. Создайте файл с секретами `.env` (например, из файла образца `.env.example` ).
```shell
cp .env.example .env 
```
3. Зайти с помощью терминала/Windows power shell в папку проекта выполнить команду `docker compose up`.
```shell
docker-compose up
```
