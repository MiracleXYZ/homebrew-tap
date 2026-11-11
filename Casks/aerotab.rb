cask "aerotab" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.1"
  sha256 arm:   "04d77f09852fe4d87bc76ba9a7d2d4ee8425a471b455de0a9ad3972cac9c5ab8",
         intel: "979755a1f48406da0462cbd554313db39b3e08ebd1d8d9614919d448a861351b"

  url "https://github.com/MiracleXYZ/AeroTab/releases/download/v#{version}/AeroTab-#{version}-#{arch}.zip"
  name "AeroTab"
  desc "Workspace switcher for AeroSpace with window previews"
  homepage "https://github.com/MiracleXYZ/AeroTab"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "AeroTab.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/AeroTab.app"], must_succeed: false
  end

  uninstall quit: "dev.miraclexyz.AeroTab"

  zap trash: [
    "~/Library/Application Support/AeroTab",
    "~/Library/Preferences/dev.miraclexyz.AeroTab.plist",
  ]
end
