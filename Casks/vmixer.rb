cask "vmixer" do
  version "1.1.0"
  sha256 "4350ab0b23ca24fb38dc5bf42e0d01f0d6febdbd105c5d19e9ace632c0b69370"

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
