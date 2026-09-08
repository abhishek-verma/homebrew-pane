cask "pane" do
  version "0.47.0.87"

  on_arm do
    url "https://github.com/abhishek-verma/Pane/releases/download/v\#{version}/Pane_v\#{version}_arm64.dmg"
    sha256 "6b8b841398ab3b94aa4c197d4942ecbe4ef37cda956d4c3cc9782c580567eb5e"
  end

  name "Pane"
  desc "Browser with a built-in personal agent"
  homepage "https://github.com/abhishek-verma/Pane"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Pane.app"

  zap trash: [
    "~/Library/Application Support/Pane",
    "~/.browseros",
    "~/.browseros-dev",
  ]
end
