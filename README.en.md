# Drawio Skill for Codex

[![Read in Chinese](https://img.shields.io/badge/README-%E4%B8%AD%E6%96%87-1f6feb?style=for-the-badge)](./README.zh-CN.md)
[![Read in English](https://img.shields.io/badge/README-English-2da44e?style=for-the-badge)](./README.en.md)

`drawio` is a local Codex skill for creating, rebuilding, and refining editable academic diagrams in `.drawio` / diagrams.net format.

Default deliverables:
- editable `.drawio` source
- matching `PNG` export

## What This Repository Provides

- A reusable Codex skill for academic diagrams
- Prompting guidance for figure types and visual style
- A PowerShell helper script to generate a starter `.drawio` file
- A clean repository layout suitable for GitHub publication

## Use Cases

- System architecture diagrams
- Technical roadmaps
- Workflow and method pipeline figures
- Module relationship diagrams
- Experiment design or ablation flowcharts
- Rebuilding an existing image into an editable `.drawio` file

## Installation

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

## Usage in Codex

### Example Prompts

```text
Use $drawio to create a thesis-ready system architecture diagram as both an editable .drawio file and a PNG.
```

```text
Use $drawio to rebuild this screenshot into a clean editable diagrams.net figure with A4-readable text.
```

```text
Use $drawio to create a technical roadmap that shows stages, methods, and outputs.
```

## Helper Script

The bundled script creates a clean starter `.drawio` file that opens in diagrams.net:

```powershell
powershell -ExecutionPolicy Bypass -File .\skill\drawio\scripts\new-drawio-figure.ps1 `
  -OutputPath .\example.drawio `
  -Title "Technical Roadmap" `
  -PageName "Roadmap"
```

## Design Rules

- Keep node text concise and academic
- Prefer clear hierarchy over decoration
- Keep text readable at normal paper or PDF scale
- Do not use the same visual grammar for architecture diagrams and roadmaps
- Keep the `.drawio` source and exported `PNG` aligned

## Security and Publishing

- Security guidance: [SECURITY.md](./SECURITY.md)
- Publishing notes: [PUBLISHING.md](./PUBLISHING.md)

## License

This repository uses the MIT License.
