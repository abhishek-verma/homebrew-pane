cask "pane" do
  version "0.47.0.99"

  on_arm do
    url "https://github.com/abhishek-verma/Pane/releases/download/v#{version}/Pane_v#{version}_arm64.dmg"
    sha256 "8db4948859556204598a1861a35684c8ad0609b169871f1ff0e7610e80c68958"
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
