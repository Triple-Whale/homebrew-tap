cask "polisher" do
  version "2.6"
  sha256 "958db9e32d05a615645005e8d23b8f661e251705c1df1b83c57f6ef60f7e731a"

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
