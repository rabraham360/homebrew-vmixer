cask "vmixer" do
  version "1.0.0"
  sha256 "00da7d7db44c13bc6f22fa115375fa10e7f9558057e38ea819e56c573696f0eb"

  url "https://github.com/rabraham360/vmixer/releases/download/v1.0.0/VMixer.zip"
  
  name "VMixer"
  desc "Virtual volume mixer and audio router for macOS"
  homepage "https://github.com/rabraham360/vmixer"

  app "VMixer.app"
  
  zap trash: [
    "~/Library/Preferences/com.rabraham360.VMixer.plist",
  ]

  postflight do
    system_command "xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/VMixer.app"],
                   sudo: true
end
