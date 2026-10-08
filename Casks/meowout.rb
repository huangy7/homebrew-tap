cask "meowout" do
  version "1.9.4"
  
  if Hardware::CPU.intel?
    sha256 "b0724bec98ce61c686dc4efb6131c15d6728b5a8df2bb6b1a8f69fafd8a69639"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-x86_64.dmg"
  else
    sha256 "2678e13dd4247952f3cf4a73e84ce1a6e3b9de6bc93e921695182277aaec0308"
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
