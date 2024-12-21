cask "brew-services-manage" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.0"
  sha256 arm:   "f0ee55752888e80af8079754c2eea078a2233fe1f80256208cb085f5c6505643",
         intel: "15b6f1c6c2051f8fe88b2fdadc99cc8750e3fb7de467cbdb76d3a1cdc49aee48"
  
  url "https://github.com/persiliao/brew-services-manage/releases/download/#{version}/Brew.Services.Manage_#{version}_#{arch}.dmg", 
    verified: "github.com/persiliao/brew-services-manage/"
  name "Brew Services Manage"
  desc "macOS Menu Bar application for managing Homebrew services."
  homepage "https://persiliao.com/arts/homebrew-services-manage"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Brew Services Manage.app"
end

