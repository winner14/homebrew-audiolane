cask "audiolane" do
  version "1.0.0"
  sha256 "PASTE_YOUR_HASH_HERE"

  url "https://github.com/YOURUSERNAME/audiolane/releases/download/v#{version}/AudioLane.zip"
  name "AudioLane"
  desc "Per-app audio routing for macOS"
  homepage "https://github.com/YOURUSERNAME/audiolane"

  depends_on formula: "blackhole-2ch"

  app "AudioLane.app"

  postflight do
    system_command "/bin/bash",
      args: ["-c", "sudo killall coreaudiod || true"]
  end

  zap trash: [
    "~/Library/Preferences/YOURBUNDLEID.plist",
    "~/Library/Application Support/AudioLane"
  ]
end
