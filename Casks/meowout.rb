cask "meowout" do
  version "1.9.3"
  
  if Hardware::CPU.intel?
    sha256 "a0adacb38f707d8c98bcf4550310d62621773aee226f1fcece5b6d03c0bcdf1f"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-x86_64.dmg"
  else
    sha256 "fa1381dcba03a9bfdbed4277068d919815d07a097c2983d1c1a9dfbfbbb9b3f8"
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
