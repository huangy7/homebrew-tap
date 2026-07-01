cask "meowout" do
  version "1.6.0"
  
  if Hardware::CPU.intel?
    sha256 "be79d0002a8a9f45c05d1c7c131f751bd48e822b04ff3d53aed9701ac76bb357"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-#{version}-x86_64.dmg"
  else
    sha256 "54be794459951460a3582003431328a101fe5a3d63a46212735ffe0a081a32cc"
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
