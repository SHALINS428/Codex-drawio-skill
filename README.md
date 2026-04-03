# Drawio Skill for Codex

[![Read in Chinese](https://img.shields.io/badge/README-%E4%B8%AD%E6%96%87-1f6feb?style=for-the-badge)](./README.zh-CN.md)
[![Read in English](https://img.shields.io/badge/README-English-2da44e?style=for-the-badge)](./README.en.md)

A Codex skill for creating, rebuilding, and refining editable academic diagrams in `.drawio` / diagrams.net format.

## Quick Overview

- Editable `.drawio` source plus matching `PNG` export
- Designed for academic and thesis workflows
- Suitable for architecture diagrams, roadmaps, workflows, and module diagrams
- Includes a PowerShell helper script for creating a starter `.drawio` file

## Read the Full Guide

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
