cask "nidooffice" do
  arch arm: "-arm64", intel: ""

  version "0.12.7"
  sha256 arm:   "a63075288c1bd142d171ac094425a224f6730c55d598a84a12a3b37f58f57408",
         intel: "33a0aece003f34efbede9218415156dcecac3b5eb4818ce48309b9be2ea60008"

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
