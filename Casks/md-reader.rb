cask "md-reader" do
  version "0.1.8"
  sha256 "9c3331a23e2a06480e695eb3ab4e75b019704b000f9707cdb955eb3c47a12296"

  url "https://github.com/ljack/macos-md-reader/releases/download/v#{version}/MD-Reader-#{version}.zip"
  name "MD Reader"
  desc "Fast native Markdown viewer for macOS"
  homepage "https://github.com/ljack/macos-md-reader"

  depends_on macos: :sonoma

  app "MD Reader.app"

  zap trash: [
    "~/Library/Preferences/fi.jarkkolietolahti.MDReader.plist",
    "~/Library/Saved Application State/fi.jarkkolietolahti.MDReader.savedState",
    "~/Library/WebKit/fi.jarkkolietolahti.MDReader",
  ]

end
