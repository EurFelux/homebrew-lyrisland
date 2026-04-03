cask "lyrisland" do
  version "0.5.0"
  sha256 "bd62bc5be8d21c20906be9daf39be7090f31b6d5780a21164940693e1d104c6d"

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
