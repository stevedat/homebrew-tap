cask "nidooffice" do
  arch arm: "-arm64", intel: ""

  version "0.13.1"
  sha256 arm:   "43737a5e3f6b46dc0ef60b6a1caf0d23aed634bfaae77639cdc804a1b873031d",
         intel: "630604178808da65c49bb079d15c58047bbd355767f0b51e01bce992bc95e9f1"

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
