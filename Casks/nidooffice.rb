cask "nidooffice" do
  arch arm: "-arm64", intel: ""

  version "0.12.3"
  sha256 arm:   "686aa6ac6eea68a596a7623afa9d1ef2772deec3b6d8946dae7a66d518c7be48",
         intel: "5136a85bb4e447bb4ea7595c39e18ecf583ea9e71248f18128d13572423b3bfb"

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
    "~/Library/Application Support/NidoOffice",
    "~/Library/Caches/com.nidoholdings.nidooffice",
    "~/Library/Caches/com.nidoholdings.nidooffice.ShipIt",
    "~/Library/HTTPStorages/com.nidoholdings.nidooffice",
    "~/Library/Logs/NidoOffice",
    "~/Library/Preferences/com.nidoholdings.nidooffice.plist",
    "~/Library/Saved Application State/com.nidoholdings.nidooffice.savedState",
  ]
end
