# Drawio Skill for Codex

[![Read in Chinese](https://img.shields.io/badge/README-%E4%B8%AD%E6%96%87-1f6feb?style=for-the-badge)](./README.zh-CN.md)
[![Read in English](https://img.shields.io/badge/README-English-2da44e?style=for-the-badge)](./README.en.md)

`drawio` is a local Codex skill for creating, rebuilding, and refining editable academic diagrams in `.drawio` / diagrams.net format.

> [!IMPORTANT]
> This repository is not a web app or backend service.
> You do not need server deployment, `npm install`, or a build step.
> To use it, copy `skill/drawio` into your local Codex skills directory.

## Deployment at a Glance

| Item | Value |
| --- | --- |
| Project type | Local Codex skill |
| Build required | No |
| Server deployment | No |
| Package installation | No |
| Target location | `~/.codex/skills/` |
| Success signal | Codex recognizes `$drawio` |

## Before You Start

You only need a few things:

- Codex is already available on your machine
- You can access your local Codex skills directory
- PowerShell is available if you want to use the helper script on Windows
- diagrams.net / draw.io is recommended if you want to edit or export figures manually

## Recommended Deployment Method

### Option A: Copy the skill folder directly

This is the simplest and most reliable approach for most users.

#### Step 1: Get the repository

Download this repository or clone it locally.

#### Step 2: Create the local skills directory

Windows PowerShell:

```powershell
New-Item -ItemType Directory -Force $env:USERPROFILE\.codex\skills | Out-Null
```

Windows CMD:

```cmd
mkdir %USERPROFILE%\.codex\skills
```

macOS / Linux:

```bash
mkdir -p ~/.codex/skills
```

#### Step 3: Copy the skill

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

### Option B: Keep the repository and sync updates manually

If you plan to maintain or customize this skill, keep the full repository locally and only sync `skill/drawio` into `~/.codex/skills/` when needed.

## How to Verify the Deployment

Open Codex and try one of these prompts:

```text
Use $drawio to create a thesis-ready system architecture diagram as both an editable .drawio file and a PNG.
```

```text
Use $drawio to create a technical roadmap that shows stages, methods, and outputs.
```

If Codex recognizes `$drawio` and responds in the style of this skill, the deployment worked.

If the change does not appear immediately, reopen the current session or restart Codex and try again.

## How to Update

After you change this repository, run the same copy command again to overwrite the older local skill:

Windows PowerShell:

```powershell
Copy-Item -Recurse -Force .\skill\drawio $env:USERPROFILE\.codex\skills\
```

macOS / Linux:

```bash
cp -R ./skill/drawio ~/.codex/skills/
```

## How to Remove

If you no longer need the skill, delete the local `drawio` folder from your Codex skills directory.

Windows PowerShell:

```powershell
Remove-Item -Recurse -Force $env:USERPROFILE\.codex\skills\drawio
```

macOS / Linux:

```bash
rm -rf ~/.codex/skills/drawio
```

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
