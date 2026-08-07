cask "pane" do
  version "0.47.0.69"

  on_arm do
    url "https://github.com/abhishek-verma/Pane/releases/download/v#{version}/Pane_v#{version}_arm64.dmg"
    sha256 "627840d1cd0e4e16fae35be475c1c09673ef9e4cabbe7edf4de20aab4c1080c4"
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
