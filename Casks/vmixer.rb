cask "vmixer" do
  version "1.2.0"
  sha256 "6ecdc053f46c860c30fbe10a2612ff1560c3c299d2fb8a1d6fa59f7845d9f6c8" # Run 'shasum -a 256' on your new zip!

  url "https://github.com/rabraham360/vmixer/releases/download/v#{version}/VMixer.zip"
  
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
