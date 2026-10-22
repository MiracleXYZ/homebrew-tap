cask "aerotab" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.0"
  sha256 arm:   "b053f004742772ef5406484c368c27190cfc15cc79c3adfdb3dfa20e21ea9815",
         intel: "2ed83ee2ad63b06028a21b1403a51e6f098042ac0f22fc23380b9253fada14d7"

  url "https://github.com/MiracleXYZ/AeroTab/releases/download/v#{version}/AeroTab-#{version}-#{arch}.zip"
  name "AeroTab"
  desc "Workspace switcher for AeroSpace with window previews"
  homepage "https://github.com/MiracleXYZ/AeroTab"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= 26.0"

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
