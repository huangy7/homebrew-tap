cask "meowout" do
  version "1.9.1"
  
  if Hardware::CPU.intel?
    sha256 "ea72e465e89128561c4e38ebffdeeb414ce5e052287d4e7988d46c02df458b87"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-x86_64.dmg"
  else
    sha256 "feac8b416a2afb312741c79fd01981df9bd834f41e987566b813604ead1b344f"
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
