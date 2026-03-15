cask "audiolane" do
  version "1.0.0"
  sha256 "054d02bc7f47d4c6eab6b372549fb6f7d613d860ffc48c566339490fecb2c8a0"

  url "https://github.com/winner14/audiolane/releases/tag/v#{version}/AudioLane.zip"
  name "AudioLane"
  desc "Per-app audio routing for macOS"
  homepage "https://github.com/winner14/audiolane"

  depends_on cask: "blackhole-2ch"

  app "AudioLane.app"

  postflight do
    system_command "/bin/bash",
      args: ["-c", "sudo killall coreaudiod || true"]
  end

  zap trash: [
    "~/Library/Preferences/winner-code.AudioLane.plist",
    "~/Library/Application Support/AudioLane"
  ]
end
