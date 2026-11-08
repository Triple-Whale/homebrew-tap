cask "polisher" do
  version "3.6"
  sha256 "efb424d3508e1bd4cf48cbbc41aaa1f4c37b718e081cc5ff4995a864ed5a1b74"

  url "https://github.com/Triple-Whale/Polisher/releases/download/v#{version}/Polisher-#{version}.dmg"
  name "Polisher"
  desc "AI-powered text polisher from your menu bar"
  homepage "https://github.com/Triple-Whale/Polisher"

  app "Polisher.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Polisher.app"]
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.provenance", "#{appdir}/Polisher.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.triplewhale.polisher.plist",
  ]
end
