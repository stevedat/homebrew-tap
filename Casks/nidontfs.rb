cask "nidontfs" do
  version "1.0.0"
  sha256 "bbede335b334ce6ca0e96180b48417910152566e24d92785a0bde9dc3949acde"

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
