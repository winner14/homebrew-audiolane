cask "audiolane" do
  version "1.0.0"
  sha256 "e094804134d0cd430d3f40303e00185eccc306763a74f1e40115ef5a54e707c3"

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
