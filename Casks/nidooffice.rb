cask "nidooffice" do
  arch arm: "-arm64", intel: ""

  version "0.12.2"
  sha256 arm:   "8c5acfd94fcfe88541fe14e480eb14afa40bc38488de752c1801dad6053e3063",
         intel: "f0afc89e560f06a61cbbff29179cc906ab647bd66ed611a832de266d3887bcaf"

  url "https://github.com/stevedat/nidooffice-releases/releases/download/v#{version}/NidoOffice-#{version}#{arch}.dmg"
  name "NidoOffice"
  desc "Local-first AI Office Suite for Docs, Sheets, Slides, and PDF"
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
    "~/Library/Caches/com.nidooffice.app",
    "~/Library/Caches/com.nidooffice.app.ShipIt",
    "~/Library/Preferences/com.nidooffice.app.plist",
    "~/Library/Saved Application State/com.nidooffice.app.savedState",
  ]
end
