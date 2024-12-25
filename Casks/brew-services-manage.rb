cask "brew-services-manage" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.0"
  sha256 arm:   "7a1d7700ede687e01b355409f887e75fc71ce2d4c385e1bee23b3ed89d98c6c9",
         intel: "5fde5cc134d285a6715615cfbb8b3dad41490cdab6977e58d895f5601d441a95"
  
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

