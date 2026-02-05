cask "agenthub" do
  version "1.0.0"
  sha256 "94ccef70275a36d78cd716d1f7cf5b3af8a71f49c6f6f24b55be7895d0f2b4ec"

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
