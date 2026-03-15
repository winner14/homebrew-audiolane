cask "audiolane" do
  version "1.0.0"
  sha256 "709a3dec15a62c82292c30f053760faa6590a87f77ea17fd2017d49e4a4aa506"

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
