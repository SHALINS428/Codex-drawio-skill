# Drawio Skill for Codex

[![查看中文](https://img.shields.io/badge/README-%E4%B8%AD%E6%96%87-1f6feb?style=for-the-badge)](./README.zh-CN.md)
[![Read in English](https://img.shields.io/badge/README-English-2da44e?style=for-the-badge)](./README.en.md)

`drawio` 是一个面向 Codex 的本地技能，用于创建、重建和修改可编辑的学术图示，输出格式为 `.drawio` / diagrams.net。

> [!IMPORTANT]
> 使用方式很简单：把 `skill/drawio` 复制到本地 Codex 技能目录即可。

## 一眼看懂怎么部署

| 项目 | 说明 |
| --- | --- |
| 项目类型 | 本地 Codex 技能 |
| 是否需要编译 | 不需要 |
| 是否需要服务器部署 | 不需要 |
| 是否需要安装依赖 | 不需要 |
| 实际部署位置 | `~/.codex/skills/` |
| 成功标志 | Codex 能识别并执行 `$drawio` |
| 可选本地软件 | diagrams.net / draw.io desktop，用于导出 PNG |

## 部署前准备

开始前，需要确认这几件事：

- 你已经在本机使用 Codex
- 你能访问本地 Codex 技能目录
- 如果要使用辅助脚本，Windows 机器需要能运行 PowerShell

## 推荐部署方式

### 方案 A：直接复制

#### 第 1 步：获取仓库

把仓库下载到本地，或者使用 `git clone` 拉取。

例如：

```bash
git clone https://github.com/SHALINS428/Codex-drawio-skill.git
cd drawio-skill
```

如果你不使用 Git，也可以直接下载 GitHub ZIP 并解压到本地。

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

如果你是用 Git 拉取的仓库，先执行：

```bash
git pull
```

然后重新执行一次复制命令覆盖旧版本：

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

如果你最初是通过 GitHub ZIP 安装的，那么更新时需要重新下载最新 ZIP，解压后再执行一次相同的同步命令。

## PNG 自动导出

仓库现在内置了一个把 `.drawio` 导出为匹配 `PNG` 的脚本：

```powershell
powershell -ExecutionPolicy Bypass -File .\skill\drawio\scripts\export-drawio-png.ps1 `
  -InputPath .\example.drawio `
  -OutputPath .\example.png
```

使用前提：

- 本机已安装 diagrams.net / draw.io desktop
- 可执行文件能从 PATH 或常见安装目录中被找到
- 如果找不到，可以手动设置 `DRAWIO_EXECUTABLE` 或 `DIAGRAMS_NET_EXECUTABLE`

例如：

```powershell
$env:DRAWIO_EXECUTABLE = 'C:\Program Files\draw.io\draw.io.exe'
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
- 一个用于将 `.drawio` 自动导出为 `PNG` 的 PowerShell 脚本
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

将 `.drawio` 导出为 `PNG`：

```powershell
powershell -ExecutionPolicy Bypass -File .\skill\drawio\scripts\export-drawio-png.ps1 `
  -InputPath .\example.drawio `
  -OutputPath .\example.png
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
