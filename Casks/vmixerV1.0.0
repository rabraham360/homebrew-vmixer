cask "vmixer@1.0.0" do
  version "1.0.0"
  sha256 "dca2eaf98c4c99b83f46f40f32c6a0d35f462992525d18d3cd22044a07b1dbb2"

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
