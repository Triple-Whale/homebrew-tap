cask "polisher" do
  version "3.3"
  sha256 "d16b39d9e1fa90511a45d92e53fb33320c124c42027648d9d270107a171c9e09"

  url "https://github.com/Triple-Whale/Polisher/releases/download/v#{version}/Polisher.dmg"
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
