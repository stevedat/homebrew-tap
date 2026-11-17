cask "vielotus" do
  version "2.0.4"
  sha256 "5e99023292d4307720830b5a31670195a910ccecab6a8b0406a22afdf6c903c5"

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
