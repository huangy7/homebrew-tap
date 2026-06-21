cask "meowout" do
  version "1.5.0"
  
  if Hardware::CPU.intel?
    sha256 "2b607e80bbc66d30c734c8304b9ae3e146f851d0353381b7b828b72f06c1a6c2"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-#{version}-x86_64.dmg"
  else
    sha256 "4a84ac541b58edb2a9ccda64e366166acd6932875ec4cb86fa3c8fbbbbe61643"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-#{version}-arm64.dmg"
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
