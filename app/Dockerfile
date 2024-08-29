# syntax=docker/dockerfile:1.4
FROM python:3.11-alpine AS builder

WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT ["python3"]
CMD ["app.py"]
