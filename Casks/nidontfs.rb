cask "nidontfs" do
  version "1.0.0"
  sha256 "60bcf989c8ff9c920bd0120b500c981ff822f12c273e4b30f67007028ac0cab4"

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
