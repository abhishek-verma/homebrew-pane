cask "pane" do
  version "0.47.0.100"

  on_arm do
    url "https://github.com/abhishek-verma/Pane/releases/download/v#{version}/Pane_v#{version}_arm64.dmg"
    sha256 "9a5c90feb7aceb0733824ee1e3d96dbe3ebaacf6e4151a4f33f2701589111140"
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
