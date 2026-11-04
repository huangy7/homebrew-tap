cask "lokii" do
  version "0.1.8"

  if Hardware::CPU.intel?
    sha256 "ce4ba06ab48dfd98b16dbafd39557de31e593f9ec2fa203fac1512922ce6feb7"
    url "https://github.com/huangy7/lokii/releases/download/v#{version}/Lokii-x86_64.dmg"
  else
    sha256 "6691391c110e9be5b3e5e265af08a222094902ecc7a19215a30c2b1791813ad3"
    url "https://github.com/huangy7/lokii/releases/download/v#{version}/Lokii-arm64.dmg"
  end

  name "Lokii"
  desc "Ultra-fast, lightweight native macOS instant file search tool"
  homepage "https://lokii.huangy.top"

  app "Lokii.app"

  zap trash: [
    "~/Library/Application Support/com.lokii.app",
    "~/Library/Caches/com.lokii.app",
    "~/Library/Preferences/com.lokii.app.plist",
  ]
end
