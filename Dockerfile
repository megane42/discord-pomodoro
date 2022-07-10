FROM ruby

RUN apt-get update && apt-get install -y \
    libsodium-dev \
    libopus-dev \
    ffmpeg

RUN gem install discord-pomodoro

CMD discord-pomodoro
