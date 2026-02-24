cask "polisher" do
  version "2.9"
  sha256 "6c81367c792b15aa9485cd8b666cdae6572d7165d81c4a4e4da31fd3ba4e4c1e"

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
