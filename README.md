# MiracleXYZ Homebrew Tap

Homebrew packages maintained by [MiracleXYZ](https://github.com/MiracleXYZ).

## AeroTab

A native workspace switcher for AeroSpace, with window previews and keyboard navigation.

Requires macOS 26+ and a running [AeroSpace](https://github.com/nikitabobko/AeroSpace) 0.21.3-Beta or later.

```sh
brew install --cask miraclexyz/tap/aerotab
```

Quit AeroTab before upgrading, then reopen it:

```sh
brew update
brew upgrade --cask miraclexyz/tap/aerotab
```

If you installed the ZIP previously, quit AeroTab and move the old app from Applications to Trash before installing with Homebrew. Settings are preserved.

[Usage and setup](https://github.com/MiracleXYZ/AeroTab#install) · [Releases](https://github.com/MiracleXYZ/AeroTab/releases/latest)

## 中文

AeroTab 是为 AeroSpace 打造的原生工作区切换器，提供窗口预览和键盘导航。需要 macOS 26+，以及已启动的 AeroSpace 0.21.3-Beta 或更新版本。

使用上方命令安装、更新。升级前先退出 AeroTab，完成后重新打开。如果之前通过 ZIP 安装，请先退出应用，将 Applications 中的旧 AeroTab.app 移到废纸篓，再使用 Homebrew 安装；设置会保留。

[中文安装与使用说明](https://github.com/MiracleXYZ/AeroTab/blob/main/README.zh-CN.md#安装)

## Maintenance

Stable AeroTab Releases automatically update `Casks/aerotab.rb` after both architecture downloads pass SHA-256 and app metadata checks. Drafts and prereleases are excluded. The sync workflow and cask template live in [MiracleXYZ/AeroTab](https://github.com/MiracleXYZ/AeroTab/blob/main/.github/workflows/homebrew.yml).

The cask follows AeroSpace's installation approach and removes the app's quarantine attribute after installation. AeroTab is not notarized.

CI installs and uninstalls the cask on Apple Silicon and Intel macOS runners without launching the app.

[MIT](LICENSE) © 2026 MiracleXYZ.
