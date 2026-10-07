cask "lokii" do
  version "0.1.1"

  if Hardware::CPU.intel?
    sha256 "c4ac59725bbaf9779ad40490b2b5290a621bbc0827ee7cfce071b8d062342593"
    url "https://github.com/huangy7/lokii/releases/download/v#{version}/Lokii-x86_64.dmg"
  else
    sha256 "291a53f9a222ce532a6b8949b3c6400621cefc90048165730c82fde332ca71bd"
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
