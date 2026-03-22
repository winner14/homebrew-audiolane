cask "audiolane" do
  version "1.0.2"
  sha256 "2739a9b12c705355bebc4d226e9084121078a201c6487c4ce032976d74639b2a"

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
