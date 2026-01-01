cask "brew-services-manager" do
  version "1.1.0"
  sha256 "1281126a76a38dfbc4c2fbb42e7d4df4cf11817acf09495b0e774e5c06108957"

  url "https://github.com/validatedev/BrewServicesManager/releases/download/v#{version}/BrewServicesManager-#{version}.dmg"
  name "Brew Services Manager"
  desc "Native menu bar app for managing Homebrew services"
  homepage "https://github.com/validatedev/BrewServicesManager"

  livecheck do
    url "https://raw.githubusercontent.com/validatedev/BrewServicesManager/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "BrewServicesManager.app"

  zap trash: [
    "~/Library/Application Support/dev.mertcandemir.BrewServicesManager",
    "~/Library/Caches/dev.mertcandemir.BrewServicesManager",
    "~/Library/HTTPStorages/dev.mertcandemir.BrewServicesManager",
    "~/Library/Preferences/dev.mertcandemir.BrewServicesManager.plist",
    "~/Library/Saved Application State/dev.mertcandemir.BrewServicesManager.savedState",
  ]
end
