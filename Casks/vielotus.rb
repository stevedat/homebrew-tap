cask "vielotus" do
  version "2.0.2"
  sha256 "515dd624fc79489bed761045b60fe8c34a483e2e02fa4ac85d6a2013d385b8b0"

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
