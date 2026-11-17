cask "nidobox" do
  version "1.4.0"

  on_arm do
    sha256 "e7907c01865d0f014082f834e230dc47cf18cd5df4500d0683a6eb5836c09307"
    url "https://github.com/stevedat/nidobox-releases/releases/download/v#{version}/NidoBox-mac-arm64.dmg"
  end
  on_intel do
    sha256 "00a7040bda678cba6a1219704cab6045d76f345a8e1602ae6aff30b6a562653c"
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
