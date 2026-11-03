cask "nidontfs" do
  version "1.0.0"
  sha256 "805ddde4426b9ce4349bb4fa69c0af4cac680d380f5d56a5ca676e2211baffc7"

  url "https://github.com/stevedat/nidontfs-releases/releases/download/v#{version}/NidoNTFS-#{version}-universal.dmg"
  name "NidoNTFS"
  desc "Native NTFS Read/Write & NidoDrop LAN Transfer Utility for macOS"
  homepage "https://tools.nido-holdings.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "NidoNTFS.app"

  zap trash: [
    "~/Library/Application Support/NidoNTFS",
    "~/Library/Preferences/com.nido.ntfs.plist",
    "~/Library/Saved Application State/com.nido.ntfs.savedState",
  ]
end
