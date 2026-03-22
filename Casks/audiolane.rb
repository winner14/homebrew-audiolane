cask "audiolane" do
  version "1.0.3"
  sha256 "5b3652925f155e5ad80b41b08a2c84310479ed615b2a4e6c0f9d528801f2ac92"

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
