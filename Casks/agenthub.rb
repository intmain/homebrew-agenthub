cask "agenthub" do
  version "1.2.0"
  sha256 "5a42f3679e76ce555a870b46724946e5e1aa72f7f58d8758f56f14381ed5fe93"

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
