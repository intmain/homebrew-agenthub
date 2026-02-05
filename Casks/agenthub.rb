cask "agenthub" do
  version "1.0.0"
  sha256 "dcacf8a0f2843d90d1150f29416a59e5a087da715114b3704a84c54705cb7f47"

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
