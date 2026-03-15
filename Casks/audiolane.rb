cask "audiolane" do
  version "1.0.0"
  sha256 "4af3ded0d1507652255e409582d44233d39305960691f55596123c72c07d6e95"

  url "https://github.com/winner14/audiolane/releases/download/v#{version}/AudioLane.zip"
  name "AudioLane"
  desc "Per-app audio routing for macOS"
  homepage "https://github.com/winner14/audiolane"

  app "AudioLane.app"

  postflight do
    system_command "/bin/bash",
      args: ["-c", "brew install blackhole-2ch || brew upgrade blackhole-2ch || true"],
      sudo: false
  end

  zap trash: [
    "~/Library/Preferences/winner-code.AudioLane.plist",
    "~/Library/Application Support/AudioLane"
  ]
end
