# huangy7's Homebrew Tap

这是 [huangy7](https://github.com/huangy7) 的个人 Homebrew 软件源 (Tap)，用于分发个人开发的 macOS 应用。

## 📦 包含的软件

### [MeowOut](https://github.com/huangy7/MeowOut)
一只奔跑的像素伴侣，守护你的职场健康。一款 macOS 原生菜单栏应用，用可爱的宠物提醒你定时休息、喝水与深呼吸。

## 🚀 如何安装

如果你想安装该 Tap 下的软件（以 MeowOut 为例），只需在终端运行：

```bash
brew install huangy7/tap/meowout
```

Homebrew 会自动拉取该仓库并安装对应架构的最新版应用。

## 🔄 更新软件

当软件发布新版本时，你可以像更新其他 Homebrew 软件一样：

```bash
brew update
brew upgrade meowout
```

## ⚠️ 注意事项

由于此源提供的软件通常没有经过 Apple 开发者账号的付费签名认证，首次打开可能遇到“无法验证开发者”或“App已损坏”的提示。只需在终端运行以下命令移除隔离属性即可：

```bash
xattr -cr /Applications/MeowOut.app
```

---
*自动化发布：该仓库由 GitHub Actions 驱动，会在上游仓库发布新版本时自动更新。*
