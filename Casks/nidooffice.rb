cask "nidooffice" do
  arch arm: "-arm64", intel: ""

  version "0.12.6"
  sha256 arm:   "aa53967628e17a7a87bdc82e3ca35c9f5d7f774cf3a5e4550d7804177747468c",
         intel: "620b740c430bdb26e25363a2dea8574f8e3763d65b8b0d115d059e90001ebe75"

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
