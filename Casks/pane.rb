cask "pane" do
  version "0.47.0.91"

  on_arm do
    url "https://github.com/abhishek-verma/Pane/releases/download/v\#{version}/Pane_v\#{version}_arm64.dmg"
    sha256 "a234be99d2c571cb22e4a2bf8eae76cb044e9f3aff52802d35e52f4795108d74"
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
