cask "pane" do
  version "0.47.0.98"

  on_arm do
    url "https://github.com/abhishek-verma/Pane/releases/download/v\#{version}/Pane_v\#{version}_arm64.dmg"
    sha256 "3645284b64e7986c16712de430d9b8aa01954283f01b7adc3f3d427d482b7b03"
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
