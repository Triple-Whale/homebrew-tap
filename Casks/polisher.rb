cask "polisher" do
  version "2.5"
  sha256 "34907af31dadf37108422b5dbb1c3b33214976596b7d48911443e415b8d8dfab"

  url "https://github.com/Triple-Whale/Polisher/releases/download/v#{version}/Polisher.dmg"
  name "Polisher"
  desc "AI-powered text polisher from your menu bar"
  homepage "https://github.com/Triple-Whale/Polisher"

  app "Polisher.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Polisher.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.triplewhale.polisher.plist",
  ]
end
