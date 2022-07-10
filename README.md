# Discord::Pomodoro

- Discord::Pomodoro is a simple pomodoro bot for discord.
- It sounds a chime on the specified voice channel
  - at **:00 (meaning "Pomodoro Start")
  - at **:50 (meaning "Breaktime Start")

## Requirements

- Discord bot token & invite the bot to your server
  - https://github.com/reactiflux/discord-irc/wiki/Creating-a-discord-bot-&-getting-a-token
- Discord voice channel id
  - https://support.discord.com/hc/en-us/articles/206346498-Where-can-I-find-my-User-Server-Message-ID-

## Usage

- Docker-compose way or Docker way is recommended because
  - it's the easiest to boot
  - it does not pollute your local environment

### Docker-compose way

```sh
git clone https://github.com/megane42/discord-pomodoro.git
cd discord-pomodoro
echo DISCORD_POMODORO_DISCORD_BOT_TOKEN=****** >> .env
echo DISCORD_POMODORO_DISCORD_VOICE_CHANNEL_ID=****** >> .env
docker-compose run --rm app
```

### Docker way

```sh
export DISCORD_POMODORO_DISCORD_BOT_TOKEN=******
export DISCORD_POMODORO_DISCORD_VOICE_CHANNEL_ID=******
docker run --rm -it megane42/discord-pomodoro
```

### Rubygems way

```sh
sudo apt-get install libsodium-dev libopus-dev ffmpeg
gem install discord-pomodoro
export DISCORD_POMODORO_DISCORD_BOT_TOKEN=******
export DISCORD_POMODORO_DISCORD_VOICE_CHANNEL_ID=******
discord-pomodoro
```

## Development

- Run console
  - `docker-compose run --rm dev`
- Run current gem
  - `docker-compose run --rm dev discord-pomodoro`
- Release
  - `emacs CHANGELOG.md`
    - https://keepachangelog.com/en/1.0.0/
  - `emacs lib/discord/pomodoro/version.rb`
  - `bundle exec rake release`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/megane42/discord-pomodoro.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Sounds

OtoLogic (CC BY 4.0) https://otologic.jp (Shortbridge17-1.mp3)
