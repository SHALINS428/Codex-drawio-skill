# Drawio Skill for Codex

`drawio` is a local Codex skill for creating, rebuilding, and refining editable academic diagrams in `.drawio` / diagrams.net format.

`drawio` 是一个面向 Codex 的本地技能，用于创建、重建和修改可编辑的学术图示，输出格式为 `.drawio` / diagrams.net。

Default deliverables:
- editable `.drawio` source
- matching `PNG` export

默认交付物：
- 可编辑的 `.drawio` 源文件
- 与之对应的 `PNG` 导出图

## What This Repository Provides

- A reusable Codex skill for academic diagrams
- Prompting guidance for figure types and visual style
- A PowerShell helper script to generate a starter `.drawio` file
- A clean repository layout suitable for GitHub publication

## 这个仓库提供什么

- 一个可复用的 Codex 学术绘图技能
- 面向不同图类型的提示词和风格约束
- 一个用于生成 `.drawio` 起始文件的 PowerShell 脚本
- 适合发布到 GitHub 的清晰仓库结构

## Use Cases / 适用场景

- System architecture diagrams / 系统架构图
- Technical roadmaps / 技术路线图
- Workflow or method pipeline figures / 流程图与方法管线图
- Module relationship diagrams / 模块关系图
- Experiment design or ablation flowcharts / 实验设计与消融流程图
- Rebuilding an existing image into an editable `.drawio` file / 将现有图片重建为可编辑的 `.drawio` 文件

## Repository Layout

```text
drawio-skill/
|-- README.md
|-- PUBLISHING.md
|-- SECURITY.md
|-- LICENSE
|-- .gitignore
`-- skill/
    `-- drawio/
        |-- SKILL.md
        |-- agents/
        |   `-- openai.yaml
        |-- references/
        |   |-- academic-diagram-style.md
        |   `-- figure-types.md
        `-- scripts/
            `-- new-drawio-figure.ps1
```

## Installation / 安装方式

### Windows PowerShell

Copy the skill into your local Codex skills directory:

```powershell
Copy-Item -Recurse -Force .\skill\drawio C:\Users\<YourUser>\.codex\skills\
```

### macOS / Linux

```bash
mkdir -p ~/.codex/skills
cp -R ./skill/drawio ~/.codex/skills/
```

## Usage in Codex / 在 Codex 中使用

### Chinese Examples / 中文示例

```text
使用 $drawio 为论文创建一个系统架构图，交付 .drawio 源文件和 PNG。
```

```text
使用 $drawio 把这张已有截图重建成可编辑的 drawio 图，并保持学术风格、A4 可读。
```

```text
使用 $drawio 画一个技术路线图，区分研究阶段、关键方法和阶段输出。
```

### English Examples / 英文示例

```text
Use $drawio to create a thesis-ready system architecture diagram as both an editable .drawio file and a PNG.
```

```text
Use $drawio to rebuild this screenshot into a clean editable diagrams.net figure with A4-readable text.
```

```text
Use $drawio to create a technical roadmap that shows stages, methods, and outputs.
```

## Helper Script / 辅助脚本

The bundled script creates a clean starter `.drawio` file that opens in diagrams.net:

```powershell
powershell -ExecutionPolicy Bypass -File .\skill\drawio\scripts\new-drawio-figure.ps1 `
  -OutputPath .\example.drawio `
  -Title "Technical Roadmap" `
  -PageName "Roadmap"
```

脚本会生成一个可直接在 diagrams.net 中打开的基础文件，适合从零开始搭建图示结构。

## Design Rules / 设计原则

- Keep node text concise and academic
- Prefer clear hierarchy over decoration
- Make sure text remains readable on normal paper or PDF scale
- Do not use the same visual grammar for architecture diagrams and roadmaps
- Keep the `.drawio` source and exported `PNG` aligned

## Security and Publishing / 安全与发布

- See [`SECURITY.md`](./SECURITY.md) for security reporting and release hygiene.
- See [`PUBLISHING.md`](./PUBLISHING.md) for GitHub publishing notes and metadata suggestions.

## License

This repository uses the MIT License.
