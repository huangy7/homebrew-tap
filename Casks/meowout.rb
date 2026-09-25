cask "meowout" do
  version "1.9.0"
  
  if Hardware::CPU.intel?
    sha256 "c4ad6299acb8b24e175aa52305a74dfcefc39f9cb0b24ad4029beebf150e70e4"
    url "https://github.com/huangy7/MeowOut/releases/download/v#{version}/MeowOut-x86_64.dmg"
  else
    sha256 "400cad8aa6d9577eff4f1e1eec79a96e6ec3e90598b0aead3d65a80142104ac0"
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
