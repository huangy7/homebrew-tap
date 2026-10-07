# huangy7's Homebrew Tap

这是 [huangy7](https://github.com/huangy7) 的个人 Homebrew 软件源 (Tap)，用于分发个人开发的 macOS 应用。

## 包含的软件

### [MeowOut](https://github.com/huangy7/MeowOut)
一只奔跑的像素伴侣，守护你的职场健康。一款 macOS 原生菜单栏应用，用可爱的宠物提醒你定时休息、喝水与深呼吸。

```bash
brew install huangy7/tap/meowout
```

### [SeshBuddy](https://github.com/huangy7/seshbuddy)
AI 编程智能体的桌面搭档与会话浏览器。直观呈现与回溯 Claude Code、Codex、Gemini 等 AI 编码工具的完整对话轨迹、代码变更与工具调用历史。

```bash
brew install huangy7/tap/seshbuddy
```

### [Lokii](https://github.com/huangy7/lokii)
专为 Mac 打造的即时文件搜索利器，像 Everything 一样快。极致轻量、亚毫秒级响应，基于 Rust 倒排索引与纯原生 Swift/AppKit 构建。

```bash
brew install huangy7/tap/lokii
```

## 如何安装

添加软件源并安装对应应用，只需在终端中执行对应命令：

```bash
# 安装 MeowOut
brew install huangy7/tap/meowout

# 安装 SeshBuddy
brew install huangy7/tap/seshbuddy

# 安装 Lokii
brew install huangy7/tap/lokii
```

Homebrew 会自动拉取本仓库并安装对应架构（Apple Silicon / Intel）的最新版本。

## 更新软件

当软件发布新版本时，你可以像更新其他 Homebrew 软件一样：

```bash
brew update
brew upgrade <formula_or_cask_name>
```

## 注意事项

由于本源提供的应用属于开源项目，未加入 Apple 付费公证计划，首次打开可能遇到“无法验证开发者”或“App已损坏”的 Gatekeeper 拦截提示。只需在终端运行对应命令移除隔离属性即可：

```bash
# MeowOut
xattr -cr /Applications/MeowOut.app

# SeshBuddy
xattr -dr com.apple.quarantine /Applications/SeshBuddy.app

# Lokii
xattr -cr /Applications/Lokii.app
```

---
*自动化发布：该仓库由 GitHub Actions 驱动，会在上游仓库发布新版本时自动更新。*
