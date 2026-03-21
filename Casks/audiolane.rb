cask "audiolane" do
  version "1.0.0"
  sha256 "c00e8ed402ea076a7a348f6cb418bce809ffde4ee147370b2ba0adf2f055af55"

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
