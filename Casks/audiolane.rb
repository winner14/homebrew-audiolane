cask "audiolane" do
  version "1.0.0"
  sha256 "46324be573ccf46172cb721a858039b3bac2d463ab022659f0f2c2c72920aded"

  url "https://github.com/winner14/audiolane/releases/tag/v#{version}/AudioLane.dmg"
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
