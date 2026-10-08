cask "pane" do
  version "0.47.0.101"

  on_arm do
    url "https://github.com/abhishek-verma/Pane/releases/download/v#{version}/Pane_v#{version}_arm64.dmg"
    sha256 "7707b4694a8c06f5142137850fd441481a44237cbf4384106051c3463cf20e2b"
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
