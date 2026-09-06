cask "meowout" do
  version "1.7.1"
  
  if Hardware::CPU.intel?
    sha256 "9c9e3160cbab8d5e862caa74ddba9194a32e75c645bcd52edf19bfbfc24d9916"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-#{version}-x86_64.dmg"
  else
    sha256 "dcfae7108c39edc88c14ce99acb2e84163445637e0e42fe28f8bb069c29b2dbc"
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
