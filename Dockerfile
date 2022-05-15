FROM python:3.8-bullseye

RUN mkdir /app
WORKDIR /app

RUN apt-get update && apt-get install libpq-dev python3.8-dev -y

COPY django-twitter-clone/requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY django-twitter-clone /app
COPY entrypoint.sh /app/entrypoint.sh

CMD ["bash", "/app/entrypoint.sh"]
