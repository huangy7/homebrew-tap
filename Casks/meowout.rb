cask "meowout" do
  version "1.8.0"
  
  if Hardware::CPU.intel?
    sha256 "3f1e6725837d0345ab58c57e0f4907ee26880cf5ab7e9fe83f449c50922af638"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-#{version}-x86_64.dmg"
  else
    sha256 "1e53bdbc8316b9dc7fdfed256dbaa1e9168d7867da2270047a3ebcb46fbfa543"
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
