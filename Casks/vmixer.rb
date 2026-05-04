cask "vmixer" do
  version "1.0.0"
  sha256 "ca49821e055986f1ac4fb1f1c5a9b62c4bc88fe31a63d0a134d8c9e2b7aff3d8"

  url "https://github.com/rabraham360/vmixer/releases/download/v1.0.0/VMixer.zip"
  
  name "VMixer"
  desc "Virtual volume mixer and audio router for macOS"
  homepage "https://github.com/rabraham360/vmixer"

  app "VMixer.app"
  
  zap trash: [
    "~/Library/Preferences/com.rabraham360.VMixer.plist",
  ]
end
