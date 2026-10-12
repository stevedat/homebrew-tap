cask "vielotus" do
  version "1.0.0"
  sha256 "39db35e15f830bb80e0ae41a2f7f42d3b6eeecd57d863721e8573a712dd40e54"

  url "https://github.com/stevedat/VieLotus-IM/releases/download/v#{version}/VieLotusIM.pkg"
  name "VieLotusIM"
  name "Sen Việt"
  desc "Pure Apple Native Vietnamese Input Method for macOS"
  homepage "https://stevedat.github.io/VieLotus-IM/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  pkg "VieLotusIM.pkg"

  uninstall quit:    "org.vielotus.inputmethod.VieLotusIM",
            pkgutil: "org.vielotus.inputmethod.VieLotusIM.pkg"

  zap trash: [
    "~/Library/Application Support/VieLotusIM",
    "~/Library/Preferences/org.vielotus.inputmethod.VieLotusIM.plist",
  ]
end
