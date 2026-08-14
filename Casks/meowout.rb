cask "meowout" do
  version "1.7.0"
  
  if Hardware::CPU.intel?
    sha256 "5e4ce40e3b31c6fcc22544d32c37c7d443d76761bf942c72b411c7ecc49a90a0"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-#{version}-x86_64.dmg"
  else
    sha256 "4da7ec714c115656c2005945c61d28eaf3d3ac7dc8443105916b047a7508daf8"
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
