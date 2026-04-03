# Drawio Skill for Codex

[![查看中文](https://img.shields.io/badge/README-%E4%B8%AD%E6%96%87-1f6feb?style=for-the-badge)](./README.zh-CN.md)
[![Read in English](https://img.shields.io/badge/README-English-2da44e?style=for-the-badge)](./README.en.md)

`drawio` 是一个面向 Codex 的本地技能，用于创建、重建和修改可编辑的学术图示，输出格式为 `.drawio` / diagrams.net。

默认交付物：
- 可编辑的 `.drawio` 源文件
- 与之对应的 `PNG` 导出图

## 这个仓库提供什么

- 一个可复用的 Codex 学术绘图技能
- 面向不同图类型的提示词和风格约束
- 一个用于生成 `.drawio` 起始文件的 PowerShell 脚本
- 适合发布到 GitHub 的清晰仓库结构

## 适用场景

- 系统架构图
- 技术路线图
- 流程图与方法管线图
- 模块关系图
- 实验设计与消融流程图
- 将现有图片重建为可编辑的 `.drawio` 文件

## 安装方式

### Windows PowerShell

将技能复制到本地 Codex 技能目录：

```powershell
Copy-Item -Recurse -Force .\skill\drawio C:\Users\<YourUser>\.codex\skills\
```

### macOS / Linux

```bash
mkdir -p ~/.codex/skills
cp -R ./skill/drawio ~/.codex/skills/
```

## 在 Codex 中使用

### 中文示例

```text
使用 $drawio 为论文创建一个系统架构图，交付 .drawio 源文件和 PNG。
```

```text
使用 $drawio 把这张已有截图重建成可编辑的 drawio 图，并保持学术风格与 A4 可读性。
```

```text
使用 $drawio 画一个技术路线图，区分研究阶段、关键方法和阶段输出。
```

## 辅助脚本

仓库内置脚本可以生成一个可直接在 diagrams.net 中打开的基础 `.drawio` 文件：

```powershell
powershell -ExecutionPolicy Bypass -File .\skill\drawio\scripts\new-drawio-figure.ps1 `
  -OutputPath .\example.drawio `
  -Title "Technical Roadmap" `
  -PageName "Roadmap"
```

## 设计原则

- 节点文字保持简洁、学术化
- 优先保证层次清晰，而不是装饰性
- 在论文页面或 PDF 中保持可读
- 架构图和路线图不要使用完全相同的视觉表达
- `.drawio` 源文件和导出的 `PNG` 应保持一致

## 安全与发布

- 安全说明见 [SECURITY.md](./SECURITY.md)
- 发布建议见 [PUBLISHING.md](./PUBLISHING.md)

## 许可证

本仓库使用 MIT License。
