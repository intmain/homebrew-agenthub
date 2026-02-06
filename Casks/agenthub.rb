cask "agenthub" do
  version "1.1.0"
  sha256 "c2c97e21d713894e90d08c98e7c581b6c7248af9824acab53b490cf00bb1f87a"

  url "https://github.com/intmain/AgentHub/releases/download/v#{version}/AgentHub-#{version}.dmg"
  name "AgentHub"
  desc "AI coding agent monitoring dashboard for Claude, Codex, Gemini"
  homepage "https://github.com/intmain/AgentHub"

  depends_on macos: ">= :sonoma"

  app "AgentHub.app"

  zap trash: [
    "~/Library/Application Support/com.agenthub.app",
    "~/Library/Preferences/com.agenthub.app.plist",
    "~/Library/Caches/com.agenthub.app",
  ]
end
