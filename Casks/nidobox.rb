cask "nidobox" do
  version "1.4.0"

  on_arm do
    sha256 "fbb9a70280c745c3474254cc81fb2e1be89cec706a87ae7650acf2672213bec6"
    url "https://github.com/stevedat/nidobox-releases/releases/download/v#{version}/NidoBox-mac-arm64.dmg"
  end
  on_intel do
    sha256 "3eacb1a5fa47543c344f59e80c39a2971f4e07e0a890bb08363413b696b7d408"
    url "https://github.com/stevedat/nidobox-releases/releases/download/v#{version}/NidoBox-mac-x64.dmg"
  end

  name "NidoBox"
  desc "NTFS Read/Write, NidoDrop LAN & Mac Utility Suite (Full on Apple Silicon, NTFS+LAN on Intel)"
  homepage "https://tools.nido-holdings.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  # Installs as /Applications/NidoBox.app while preserving com.nido.ntfs TCC permissions & helper
  app "NidoBox.app"

  zap trash: [
    "~/Library/Application Support/NidoNTFS",
    "~/Library/Preferences/com.nido.ntfs.plist",
    "~/Library/Saved Application State/com.nido.ntfs.savedState",
  ]
end
