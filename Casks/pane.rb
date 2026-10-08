cask "pane" do
  version "0.47.0.102"

  on_arm do
    url "https://github.com/abhishek-verma/Pane/releases/download/v#{version}/Pane_v#{version}_arm64.dmg"
    sha256 "55578b35f7df6d1ba9e63cf2a9e5f96c7191b0f8bcdeb4d1d6187427ee77c97e"
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
