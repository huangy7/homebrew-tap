cask "meowout" do
  version "1.9.1"
  
  if Hardware::CPU.intel?
    sha256 "1692f163f414c6103f21a29673234bd7130ef201d112773eb5117a3dc4948d05"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-x86_64.dmg"
  else
    sha256 "fef07d6ba67d3395c67bada7cd6c7f46697975086a34f27b6666a5d9dda182b4"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-arm64.dmg"
  end

  name "MeowOut"
  desc "A lovely macOS assistant"
  homepage "https://github.com/huangy7/MeowOut"

  app "MeowOut.app"
  
  zap trash: [
    "~/Library/Application Scripts/com.huangy7.MeowOut",
    "~/Library/Containers/com.huangy7.MeowOut"
  ]
end
