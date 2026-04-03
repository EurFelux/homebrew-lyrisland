cask "lyrisland" do
  version "0.4.0"
  sha256 "51200b35e55b4e5aab730e3742182a730ad8b3a4d5a4e078a1bcd99b88256adc"

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
