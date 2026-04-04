# Drawio Skill for Codex

[![查看中文](https://img.shields.io/badge/README-%E4%B8%AD%E6%96%87-1f6feb?style=for-the-badge)](./README.zh-CN.md)
[![Read in English](https://img.shields.io/badge/README-English-2da44e?style=for-the-badge)](./README.en.md)

`drawio` 是一个面向 Codex 的本地技能，用于创建、重建和修改可编辑的学术图示，输出格式为 `.drawio` / diagrams.net。

> [!IMPORTANT]
> 这个仓库不是 Web 项目，也不是后端服务。
> 你不需要部署服务器，不需要 `npm install`，也不需要构建产物。
> 它的使用方式很简单：把 `skill/drawio` 复制到本地 Codex 技能目录即可。

## 一眼看懂怎么部署

| 项目 | 说明 |
| --- | --- |
| 项目类型 | 本地 Codex 技能 |
| 是否需要编译 | 不需要 |
| 是否需要服务器部署 | 不需要 |
| 是否需要安装依赖 | 不需要 |
| 实际部署位置 | `~/.codex/skills/` |
| 成功标志 | Codex 能识别并执行 `$drawio` |

## 部署前准备

开始前，你只需要确认这几件事：

- 你已经在本机使用 Codex
- 你能访问本地 Codex 技能目录
- 如果要使用辅助脚本，Windows 机器需要能运行 PowerShell
- 如果要编辑或导出图，建议本机有 diagrams.net / draw.io 或等效工作流

## 推荐部署方式

### 方案 A：直接复制，最适合大多数人

这是最直接、最容易成功的方式。

#### 第 1 步：获取仓库

把仓库下载到本地，或者使用 `git clone` 拉取。

#### 第 2 步：创建 Codex 技能目录

Windows PowerShell：

```powershell
New-Item -ItemType Directory -Force $env:USERPROFILE\.codex\skills | Out-Null
```

Windows CMD：

```cmd
mkdir %USERPROFILE%\.codex\skills
```

macOS / Linux：

```bash
mkdir -p ~/.codex/skills
```

#### 第 3 步：复制技能目录

Windows PowerShell：

```powershell
Copy-Item -Recurse -Force .\skill\drawio $env:USERPROFILE\.codex\skills\
```

Windows CMD：

```cmd
xcopy /E /I /Y skill\drawio %USERPROFILE%\.codex\skills\drawio
```

macOS / Linux：

```bash
cp -R ./skill/drawio ~/.codex/skills/
```

### 方案 B：保留仓库并手动同步

如果你希望以后继续更新这个技能，可以保留整个仓库，只把 `skill/drawio` 目录同步到 `~/.codex/skills/`。  
这样更新时更方便对比变更，也更适合维护自己的分支。

## 部署完成后如何验证

打开 Codex，输入下面任意一条：

```text
使用 $drawio 为论文创建一个系统架构图，交付 .drawio 源文件和 PNG。
```

```text
使用 $drawio 画一个技术路线图，区分研究阶段、关键方法和阶段输出。
```

如果 Codex 能识别 `$drawio` 并按这个技能的风格响应，说明部署成功。

如果没有立即生效，可以重新打开当前会话，或重新启动 Codex 后再试一次。

## 更新方式

如果你后续修改了这个仓库，可以重新执行一次复制命令覆盖旧版本：

Windows PowerShell：

```powershell
Copy-Item -Recurse -Force .\skill\drawio $env:USERPROFILE\.codex\skills\
```

macOS / Linux：

```bash
cp -R ./skill/drawio ~/.codex/skills/
```

## 卸载方式

如果你不再需要这个技能，删除本地技能目录中的 `drawio` 文件夹即可。

Windows PowerShell：

```powershell
Remove-Item -Recurse -Force $env:USERPROFILE\.codex\skills\drawio
```

macOS / Linux：

```bash
rm -rf ~/.codex/skills/drawio
```

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
