cask "brew-services-manage" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.1"
  sha256 arm:   "b88ebe997e78e9ef069e15a5e1cc9fbafc081264feac5a20b023d1eb6cc9a390",
         intel: "15efb735c97df549c74f4220f884033bb7f236fe4a72fb78dbbf04a0200e23aa"
  
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

