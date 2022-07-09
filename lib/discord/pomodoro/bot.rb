# frozen_string_literal: true

require "discordrb"

module Discord
  module Pomodoro
    # main bot
    class Bot
      def run
        bot.run(true)
        at_exit { bot.stop }

        loop do
          voice_bot.play_file chime_path
          sleep 10
        end
      end

      private

      def bot
        @bot ||= Discordrb::Bot.new token: ENV["DISCORD_BOT_TOKEN"]
      end

      def voice_bot
        @voice_bot ||= bot.voice_connect(ENV["DISCORD_VOICE_CHANNEL_ID"])
      end

      def chime_path
        File.expand_path("../../../sounds/chime.mp3", __dir__)
      end
    end
  end
end
