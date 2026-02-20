cask "polisher" do
  version "2.1"
  sha256 "7880334d4d5a692f0f88e449ca580dca4f25f01d893b62124e64a71267d9c535"

  url "https://github.com/Triple-Whale/Polisher/releases/download/v#{version}/Polisher.dmg"
  name "Polisher"
  desc "AI-powered text polisher from your menu bar"
  homepage "https://github.com/Triple-Whale/Polisher"

  app "Polisher.app"

  zap trash: [
    "~/Library/Preferences/com.triplewhale.polisher.plist",
  ]
end
