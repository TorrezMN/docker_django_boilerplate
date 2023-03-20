# syntax=docker/dockerfile:1
FROM python:3

# Upgrade pip.
RUN pip install --upgrade pip

# Copy and install requirements.
COPY requirements.txt . 
RUN pip install -r requirements.txt

COPY ./dj_project /app
WORKDIR /app 

COPY ./entry.sh /
ENTRYPOINT ["sh", "/entry.sh"]

