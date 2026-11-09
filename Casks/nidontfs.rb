cask "nidontfs" do
  version "1.2.1"
  sha256 "80696326abd36e91391a09f6d8fc9a0d82641d1464a3bfdc20a86aaeac9c3cfd"

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
