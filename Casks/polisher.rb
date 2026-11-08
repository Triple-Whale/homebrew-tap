cask "polisher" do
  version "3.7"
  sha256 "fec0301b598251411e48e82d91ea55dbf41795837639143ce6d0cbed46516a6e"

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
