cask "vmixer" do
  version "1.1.0"
  sha256 "b5905227bf685f17c446a43374e540c8191a3a4109f2c3485937e236d492432d" # Run 'shasum -a 256' on your new zip!

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
