cask "vielotus" do
  version "1.1.1"
  sha256 "fd6bc790845f569652d73b9dc208add78d7c9b83bdd7d7deb812f0fb815460c1"

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
