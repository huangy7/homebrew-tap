cask "lokii" do
  version "0.1.9"

  if Hardware::CPU.intel?
    sha256 "f64a7804528c3767663468d00406aea61bcf1538356c9b8b9f7f5a64b5421fa7"
    url "https://github.com/huangy7/lokii/releases/download/v#{version}/Lokii-x86_64.dmg"
  else
    sha256 "75739fade13d62e5cd254050c141ccb93c818999ce5b1c60c42d1430d4d4e1bb"
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
