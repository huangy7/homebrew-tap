cask "meowout" do
  version "1.9.2"
  
  if Hardware::CPU.intel?
    sha256 "d2696d4687b3e197579c857112941a388edc89e0b9a954b9eb20920ecc069644"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-x86_64.dmg"
  else
    sha256 "c5e3b5a9424173f026c99e0ce6854d4134a94cd5135ada2e66b1748f944fb0e7"
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
