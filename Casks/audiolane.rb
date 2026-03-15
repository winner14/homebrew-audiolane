cask "audiolane" do
  version "1.0.0"
  sha256 "2abbb4d7a4a23509a95579e513793582a8a726f68ce90bc970f83aff0f807040"

  url "https://github.com/winner14/audiolane/releases/download/v#{version}/AudioLane.zip"
  name "AudioLane"
  desc "Per-app audio routing for macOS"
  homepage "https://github.com/winner14/audiolane"

  depends_on formula: "blackhole-2ch"

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
