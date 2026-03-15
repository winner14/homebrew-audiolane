cask "audiolane" do
  version "1.0.0"
  sha256 "bdfb744ef67ac8993cb2b000b1b16775a16e734b02ea5d901baef3eed761c733"

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
