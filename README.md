# Drawio Skill for Codex

[![Read in Chinese](https://img.shields.io/badge/README-%E4%B8%AD%E6%96%87-1f6feb?style=for-the-badge)](./README.zh-CN.md)
[![Read in English](https://img.shields.io/badge/README-English-2da44e?style=for-the-badge)](./README.en.md)

A Codex skill for creating, rebuilding, and refining editable academic diagrams in `.drawio` / diagrams.net format.

> [!IMPORTANT]
> This repository is a local Codex skill, not a web service or backend application.
> You do not need Docker, `npm install`, or server deployment.
> To use it, copy `skill/drawio` into your local Codex skills directory.

## Deployment at a Glance

| Item | Value |
| --- | --- |
| Project type | Local Codex skill |
| Build required | No |
| Server deployment | No |
| Package installation | No |
| Target location | `~/.codex/skills/` |
| Success signal | Codex can respond to `$drawio` prompts |

## 3-Step Quick Start

### 1. Get the repository

Clone or download this repository to your machine.

### 2. Copy the skill folder

Windows PowerShell:

```powershell
New-Item -ItemType Directory -Force $env:USERPROFILE\.codex\skills | Out-Null
Copy-Item -Recurse -Force .\skill\drawio $env:USERPROFILE\.codex\skills\
```

macOS / Linux:

```bash
mkdir -p ~/.codex/skills
cp -R ./skill/drawio ~/.codex/skills/
```

### 3. Verify the installation

In Codex, try:

```text
Use $drawio to create a simple academic system architecture diagram as both a .drawio file and a PNG.
```

If Codex recognizes `$drawio`, the deployment is complete.

## Need the Detailed Guide?

- Chinese guide: [README.zh-CN.md](./README.zh-CN.md)
- English guide: [README.en.md](./README.en.md)

## Repository Layout

```text
drawio-skill/
|-- README.md
|-- README.zh-CN.md
|-- README.en.md
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

## License

This repository uses the MIT License.
