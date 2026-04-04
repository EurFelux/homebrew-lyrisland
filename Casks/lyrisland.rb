cask "lyrisland" do
  version "0.6.0"
  sha256 "ebc08e37e4758ff0ba5d97ed29db1bcf5e2b3a3e581a15263655cce42b9dc5f8"

  url "https://github.com/EurFelux/Lyrisland/releases/download/v#{version}/Lyrisland-#{version}.zip"
  name "Lyrisland"
  desc "Menu bar lyrics app for Spotify on macOS"
  homepage "https://github.com/EurFelux/Lyrisland"

  depends_on macos: ">= :sonoma"

  app "Lyrisland.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Lyrisland.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Caches/com.wangjiyuan.Lyrisland",
    "~/Library/Preferences/com.wangjiyuan.Lyrisland.plist",
  ]
end
