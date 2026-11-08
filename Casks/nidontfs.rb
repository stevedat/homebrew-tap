cask "nidontfs" do
  version "1.2.0"
  sha256 "f65c09def0e66bf82bc59965835930cfadc6551cd2c75de8202a87582472b0ac"

  url "https://github.com/stevedat/nidontfs-releases/releases/download/v#{version}/NidoNTFS-#{version}-universal.dmg"
  name "NidoNTFS"
  desc "Native NTFS Read/Write, Multi-Media USB/SSD Optimizer & NidoDrop LAN for macOS"
  homepage "https://tools.nido-holdings.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "NidoNTFS.app"

  zap trash: [
    "~/Library/Application Support/NidoNTFS",
    "~/Library/Preferences/com.nido.ntfs.plist",
    "~/Library/Saved Application State/com.nido.ntfs.savedState",
  ]
end
