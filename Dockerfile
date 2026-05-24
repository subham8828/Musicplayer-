FROM python:3.10-slim

WORKDIR /MusicPlayer

RUN apt-get update && apt-get install -y ffmpeg git curl

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD ["bash", "startup.sh"]
