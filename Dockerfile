FROM ruby

RUN apt-get update && apt-get install -y \
    libsodium-dev \
    libopus-dev \
    ffmpeg

WORKDIR /app
COPY . /app
RUN bundle install
RUN bundle exec rake install

CMD discord-pomodoro
