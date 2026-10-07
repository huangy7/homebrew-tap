cask "seshbuddy" do
  version "0.1.1"

  if Hardware::CPU.intel?
    sha256 "2165f6f46d0f06b29a5a0c0b8520c9e8daba5eea9be3db8cadc2231e882088af"
    url "https://github.com/huangy7/seshbuddy/releases/download/v#{version}/SeshBuddy_x64.dmg"
  else
    sha256 "7f3d9d8617da8c011de94cfdcb93090d84350eb9532145b8abee865a57e7d8d6"
    url "https://github.com/huangy7/seshbuddy/releases/download/v#{version}/SeshBuddy_aarch64.dmg"
  end

  name "SeshBuddy"
  desc "Desktop companion and session explorer for AI coding agents"
  homepage "https://seshbuddy.huangy.top"

  app "SeshBuddy.app"

  zap trash: [
    "~/Library/Application Support/com.seshbuddy.app",
    "~/Library/Caches/com.seshbuddy.app",
    "~/Library/Preferences/com.seshbuddy.app.plist",
    "~/Library/Saved Application State/com.seshbuddy.app.savedState",
    "~/Library/WebKit/com.seshbuddy.app",
  ]
end
