cask "pane" do
  version "0.47.0.81"

  on_arm do
    url "https://github.com/abhishek-verma/Pane/releases/download/v\#{version}/Pane_v\#{version}_arm64.dmg"
    sha256 "4281d39f157c85f06db4bff4c40b295e7f457ec1f78a9e5000ab1a875717ec35"
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
