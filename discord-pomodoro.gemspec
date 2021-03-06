# frozen_string_literal: true

require_relative "lib/discord/pomodoro/version"

Gem::Specification.new do |spec|
  spec.name          = "discord-pomodoro"
  spec.version       = Discord::Pomodoro::VERSION
  spec.authors       = ["megane42"]
  spec.email         = [""]

  spec.summary       = "Simple pomodoro bot for discord"
  spec.description   = "You can set timer and receive notify on your voice channel."
  spec.homepage      = "https://github.com/megane42/discord-pomodoro/"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"]   = spec.homepage + "blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "discordrb", "~> 3.4"
  spec.add_dependency "rufus-scheduler", "~> 3.8"
end
