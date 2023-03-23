FROM python:3.8.5-alpine

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./src /app

WORKDIR /app

COPY ./entry.sh /
ENTRYPOINT ["sh", "/entry.sh"]








