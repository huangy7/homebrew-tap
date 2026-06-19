cask "meowout" do
  version "1.4.2"
  
  if Hardware::CPU.intel?
    sha256 "251f67720135e902b80b673c9b563f8c1e585cfad81e1bf1bd47e4c0aa2041d5"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-#{version}-x86_64.dmg"
  else
    sha256 "09ddb7325250be91f0412939ccc10c7616d6585bd0020bd489bcc6ca051b28b4"
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
