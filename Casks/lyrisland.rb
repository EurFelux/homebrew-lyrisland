cask "lyrisland" do
  version "0.4.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/EurFelux/Lyrisland/releases/download/v#{version}/Lyrisland-#{version}.zip"
  name "Lyrisland"
  desc "Menu bar lyrics app for Spotify on macOS"
  homepage "https://github.com/EurFelux/Lyrisland"

  depends_on macos: ">= :sonoma"

  app "Lyrisland.app"

  zap trash: [
    "~/Library/Caches/com.wangjiyuan.Lyrisland",
    "~/Library/Preferences/com.wangjiyuan.Lyrisland.plist",
  ]
end
