FROM python:3.9


RUN pip install --upgrade pip

RUN apt-get update && apt-get -y install cron && apt-get -y install htop

COPY ./requirements.txt .
RUN pip install -r requirements.txt



COPY ./src /app

WORKDIR /app

COPY ./entry.sh /
ENTRYPOINT ["sh", "/entry.sh"]








