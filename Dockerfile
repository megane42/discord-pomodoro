FROM ruby

RUN apt-get update && apt-get install -y \
    libsodium-dev \
    libopus-dev \
    ffmpeg

WORKDIR /app
COPY . /app

RUN bin/setup
CMD bin/console
