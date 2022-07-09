# frozen_string_literal: true

require "discordrb"
require "rufus-scheduler"

module Discord
  module Pomodoro
    # main bot
    class Bot
      def run
        bot.run(true)
        at_exit { bot.stop }

        connect_voice_bot
        schedule_chime

        bot.join
      end

      private

      def bot
        @bot ||= Discordrb::Bot.new token: ENV["DISCORD_BOT_TOKEN"]
      end

      def voice_bot
        @voice_bot ||= bot.voice_connect(ENV["DISCORD_VOICE_CHANNEL_ID"])
      end

      def connect_voice_bot
        voice_bot
      end

      def chime_path
        @chime_path ||= File.expand_path("../../../sounds/chime.mp3", __dir__)
      end

      def scheduler
        @scheduler ||= Rufus::Scheduler.new
      end

      def schedule_chime
        scheduler.cron("0 * * * *")  { voice_bot.play_file chime_path }
        scheduler.cron("50 * * * *") { voice_bot.play_file chime_path }
      end
    end
  end
end
