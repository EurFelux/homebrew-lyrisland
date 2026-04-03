cask "lyrisland" do
  version "0.5.1"
  sha256 "c95389f484f27169427b0d9859ba8437bab16f6172a63f548d78f100b2d78173"

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
