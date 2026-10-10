cask "seshbuddy" do
  version "0.1.2"

  if Hardware::CPU.intel?
    sha256 "77e5894dfc935e9c9f7c848f7a18d864c27e57fa1664f43e48a0fc26a24279f4"
    url "https://github.com/huangy7/seshbuddy/releases/download/v#{version}/SeshBuddy_x64.dmg"
  else
    sha256 "9f9bcb2d3f6b85d80044ddac5260551c5fcd9f42426515596aaafe0222106fac"
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
