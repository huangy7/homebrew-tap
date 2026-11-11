cask "lokii" do
  version "0.1.10"

  if Hardware::CPU.intel?
    sha256 "e5229bb531c623c20458e61944242ec1e2e59a91b3240bc75c448fc16db9a396"
    url "https://github.com/huangy7/lokii/releases/download/v#{version}/Lokii-x86_64.dmg"
  else
    sha256 "e915755b8dc8dda4ace25cd0fc918fe30231f9ba8ef512e4da6c8503e2fa911b"
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
