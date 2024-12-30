cask "brew-services-manage" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.1"
  sha256 arm:   "9f7bf2241248752ef141e46653c75b9355f7c6bbd1229f38ce1a4ea943c93541",
         intel: "0c56eed975f221fa187793931cbe1fa6602e8bb0793e200318f6d5c42fb2993f"
  
  url "https://github.com/persiliao/brew-services-manage/releases/download/#{version}/Brew.Services.Manage_#{version}_#{arch}.dmg", 
    verified: "github.com/persiliao/brew-services-manage/"
  name "Brew Services Manage"
  desc "macOS Menu Bar application for managing Homebrew services."
  homepage "https://github.com/persiliao/brew-services-manage"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Brew Services Manage.app"
end

