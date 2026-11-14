cask "nidobox" do
  version "1.3.1"

  on_arm do
    sha256 "bf300f60c7bcab6ed8713e339394dd3604f99d08725a35c4177b70fffda2b4af"
    url "https://github.com/stevedat/nidobox-releases/releases/download/v#{version}/NidoBox-mac-arm64.dmg"
  end
  on_intel do
    sha256 "76b231bd471e98cfaa82a0a726400241b109440ec73cbb88bdc98c9dd378f3a9"
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
