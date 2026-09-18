cask "pane" do
  version "0.47.0.94"

  on_arm do
    url "https://github.com/abhishek-verma/Pane/releases/download/v\#{version}/Pane_v\#{version}_arm64.dmg"
    sha256 "26baaf3c242f88f63b857a534496fff5704f4fa52ddde95bd3d6de9bcbb31537"
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
