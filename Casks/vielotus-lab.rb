cask "vielotus-lab" do
  version "1.0.0"
  sha256 "74eec24e9c039260fdd521aea50cef864cff876245f5ee929e99fe10a3da4240"

  url "https://github.com/stevedat/VieLotus-IM/releases/download/v#{version}/VieLotusLab.dmg"
  name "VieLotusLab"
  name "VieLotus Lab"
  desc "Diagnostic & Trace Inspection Suite for VieLotusIM"
  homepage "https://stevedat.github.io/VieLotus-IM/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "VieLotusLab.app"

  zap trash: [
    "~/Library/Application Support/VieLotusLab",
    "~/Library/Preferences/org.vielotus.inputmethod.VieLotusLab.plist",
  ]
end
