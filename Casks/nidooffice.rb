cask "nidooffice" do
  arch arm: "-arm64", intel: ""

  version "0.13.0"
  sha256 arm:   "517e8c445f77dbab5c8e5195399f3f4b963fc52465c618c3b723e3ccab608c24",
         intel: "50e3f643ede62b1070a8920b394857e5d442ccc7e18521f20dca181a5513b8a4"

  url "https://github.com/stevedat/nidooffice-releases/releases/download/v#{version}/NidoOffice-#{version}#{arch}.dmg"
  name "NidoOffice"
  desc "Local-first AI-native office suite for Docs, Sheets, Slides, and PDF"
  homepage "https://github.com/stevedat/nidooffice-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "NidoOffice.app"

  zap trash: [
    "~/.nidooffice",
    "~/Library/Application Support/NidoOffice",
    "~/Library/Caches/com.nidooffice.app",
    "~/Library/Caches/com.nidooffice.app.ShipIt",
    "~/Library/Caches/com.nidoholdings.nidooffice",
    "~/Library/Caches/com.nidoholdings.nidooffice.ShipIt",
    "~/Library/HTTPStorages/com.nidooffice.app",
    "~/Library/HTTPStorages/com.nidoholdings.nidooffice",
    "~/Library/Logs/NidoOffice",
    "~/Library/Preferences/com.nidooffice.app.plist",
    "~/Library/Preferences/com.nidoholdings.nidooffice.plist",
    "~/Library/Saved Application State/com.nidooffice.app.savedState",
    "~/Library/Saved Application State/com.nidoholdings.nidooffice.savedState",
  ]
end
