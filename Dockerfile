FROM python:3.11

WORKDIR /app
COPY app/main.py .

CMD ["python", "main.py"]
