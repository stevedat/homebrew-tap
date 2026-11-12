cask "nidobox" do
  version "1.3.0"

  on_arm do
    sha256 "250f23790104251f5b234f99a0ff3b69108ddb467d4aa4fb69ae18ca0dc0f53c"
    url "https://github.com/stevedat/nidobox-releases/releases/download/v#{version}/NidoBox-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "4a2f0914387521ce0a06b46aa0745078b943a0e1e09475426e08588e391634db"
    url "https://github.com/stevedat/nidobox-releases/releases/download/v#{version}/NidoBox-#{version}-x64.dmg"
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

  # Preserves Wave-1 installation path for seamless in-place updates from NidoNTFS
  app "NidoNTFS.app"

  zap trash: [
    "~/Library/Application Support/NidoNTFS",
    "~/Library/Preferences/com.nido.ntfs.plist",
    "~/Library/Saved Application State/com.nido.ntfs.savedState",
  ]
end
