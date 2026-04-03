# Codex Drawio Skill

`drawio` is a local Codex skill for creating and refining editable academic diagrams in `.drawio` / diagrams.net format.

It is designed for thesis and paper workflows where each figure should be delivered in two forms:
- editable source: `.drawio`
- insertion-ready export: `PNG`

## What This Skill Is For

This skill is intended for:
- system architecture diagrams
- technical roadmaps
- workflow and method pipeline figures
- experiment design flowcharts
- module relationship diagrams
- rebuilding an existing image into an editable `.drawio` source

Its default visual direction is academic rather than decorative:
- clear hierarchy
- restrained colors
- stable alignment
- readable text at normal A4 viewing scale

## Repository Structure

```text
drawio-skill/
├─ README.md
├─ LICENSE
├─ .gitignore
└─ skill/
   └─ drawio/
      ├─ SKILL.md
      ├─ agents/
      │  └─ openai.yaml
      ├─ references/
      │  ├─ academic-diagram-style.md
      │  └─ figure-types.md
      └─ scripts/
         └─ new-drawio-figure.ps1
```

## Install Locally

Copy the `skill/drawio` folder into your Codex skill directory:

```powershell
Copy-Item -Recurse -Force .\skill\drawio C:\Users\shalins\.codex\skills\
```

After that, Codex can invoke the skill by name:

```text
Use $drawio to create an academic technical roadmap as both a .drawio file and a PNG.
```

## Design Rules

This skill follows these defaults:
- editable source and PNG are delivered together
- architecture diagrams and roadmap diagrams should not use the same expression style
- figure text should remain legible in thesis or paper layout
- node text should use concise academic wording instead of paragraph-length prose

## Helper Script

The bundled script `scripts/new-drawio-figure.ps1` creates a standard `.drawio` scaffold that opens in diagrams.net. It is useful when you want a clean starting file rather than hand-assembling XML.

Example:

```powershell
powershell -ExecutionPolicy Bypass -File .\skill\drawio\scripts\new-drawio-figure.ps1 `
  -OutputPath .\example.drawio `
  -Title "Technical Roadmap" `
  -PageName "Roadmap"
```

## Publishing Notes

This repository is already structured for GitHub publication.

Suggested repository names:
- `codex-drawio-skill`
- `academic-drawio-skill`
- `drawio-skill-for-codex`

## License

This repository currently uses the MIT License.

