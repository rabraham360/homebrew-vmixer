cask "vmixer" do
  version "1.1.0"
  sha256 "0c5342faa01e0078454b8429d087d2ac0c7d30ca410f14d7fe13ff89597dccbb"

  url "https://github.com/rabraham360/vmixer/releases/download/v1.1.0/VMixer.zip"
  
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
end
