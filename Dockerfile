FROM python:3.8.12-slim-buster
WORKDIR /app

COPY requirements.txt requirements.txt
COPY .telegramToken .telegramToken

RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "bot.py"]