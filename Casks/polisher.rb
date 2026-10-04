cask "polisher" do
  version "3.4"
  sha256 "5ca9415eb4422984a708237169eedcfbcf5c28c42499c0eee3cdc7a0ff53937e"

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
