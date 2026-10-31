cask "nidoagent" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "688f692c89975b727745ba8c5e55663003a3a075b2000df1760f0911eb73b54b",
         intel: "688f692c89975b727745ba8c5e55663003a3a075b2000df1760f0911eb73b54b"

  url "https://github.com/stevedat/nidoagent-releases/releases/download/v#{version}/NidoAgent-#{version}-#{arch}.dmg"
  name "NidoAgent"
  desc "Autonomous AI Coding IDE, Native APM (NidoPulse) & Apple Remote Control"
  homepage "https://github.com/stevedat/nidoagent-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "NidoAgent.app"
  binary "#{appdir}/NidoAgent.app/Contents/Resources/app.asar.unpacked/out/cli/index.js", target: "nidoagent"

  zap trash: [
    "~/Library/Application Support/NidoAgent",
    "~/Library/Caches/com.nidoholdings.nidoagent",
    "~/Library/Caches/com.nidoholdings.nidoagent.ShipIt",
    "~/Library/Preferences/com.nidoholdings.nidoagent.plist",
    "~/Library/Saved Application State/com.nidoholdings.nidoagent.savedState",
  ]
end
