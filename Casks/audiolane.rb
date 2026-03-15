cask "audiolane" do
  version "1.0.0"
  sha256 "01498598d9f1ffe27ccc54d022bb88d862b943ca3f0a0c96a79cc3efacb3f3b2"

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
