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
| Optional local app | diagrams.net / draw.io desktop for PNG export |

## 3-Step Quick Start

### 1. Get the repository

Clone or download this repository to your machine.

Clone with Git:

```bash
git clone https://github.com/SHALINS428/Codex-drawio-skill.git
cd drawio-skill
```

Or download the GitHub ZIP and extract it locally.

### 2. Copy the skill folder

Windows PowerShell:

```powershell
New-Item -ItemType Directory -Force $env:USERPROFILE\.codex\skills | Out-Null
Copy-Item -Recurse -Force .\skill\drawio $env:USERPROFILE\.codex\skills\
```

Windows CMD:

```cmd
mkdir %USERPROFILE%\.codex\skills
xcopy /E /I /Y skill\drawio %USERPROFILE%\.codex\skills\drawio
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

## Updating the Skill

If you installed this repository with Git:

```bash
git pull
```

Then sync the skill folder again:

Windows PowerShell:

```powershell
Copy-Item -Recurse -Force .\skill\drawio $env:USERPROFILE\.codex\skills\
```

Windows CMD:

```cmd
xcopy /E /I /Y skill\drawio %USERPROFILE%\.codex\skills\drawio
```

macOS / Linux:

```bash
cp -R ./skill/drawio ~/.codex/skills/
```

If you installed from a GitHub ZIP, download the new ZIP, extract it, and run the same sync step again.

## PNG Export Automation

This repository includes an export script for turning a finalized `.drawio` file into a matching `PNG`:

```powershell
powershell -ExecutionPolicy Bypass -File .\skill\drawio\scripts\export-drawio-png.ps1 `
  -InputPath .\example.drawio `
  -OutputPath .\example.png
```

Requirements:
- diagrams.net / draw.io desktop must be installed locally
- the desktop executable must be discoverable from PATH or standard install locations
- if not, set `DRAWIO_EXECUTABLE` or `DIAGRAMS_NET_EXECUTABLE` to the full executable path

Example:

```powershell
$env:DRAWIO_EXECUTABLE = 'C:\Program Files\draw.io\draw.io.exe'
```

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
            |-- export-drawio-png.ps1
            `-- new-drawio-figure.ps1
```

## License

This repository uses the MIT License.
