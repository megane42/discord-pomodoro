FROM ruby

RUN apt-get update && apt-get install -y \
    libsodium-dev \
    libopus-dev \
    ffmpeg

WORKDIR /app
COPY . /app
RUN gem build   discord-pomodoro.gemspec && \
    gem install discord-pomodoro-0.1.0.gem

CMD discord-pomodoro