---
name: drawio
description: Use when the user asks to create, edit, rebuild, or refine editable diagrams in `.drawio` / diagrams.net format, especially for academic figures such as system architecture diagrams, technical roadmaps, workflow diagrams, method pipelines, module relationship diagrams, and experiment flowcharts. Use this skill when the user wants both an editable source file and a PNG export, or when an existing figure image needs to be rebuilt into a clean editable academic-style diagram.
---

# Drawio

## Overview

This skill creates and updates editable `diagrams.net` / `.drawio` figures for academic and thesis workflows.

Its default delivery contract is:
- one editable `.drawio` source file
- one matching `PNG` export

## When To Use

Use this skill when the user asks for:
- a system architecture diagram
- a technical roadmap
- a workflow or method pipeline figure
- a module relationship diagram
- an experiment design or ablation flowchart
- an editable `.drawio` version rebuilt from an image
- a thesis figure that must remain readable on A4 pages

Do not use this skill for:
- raster illustration generation
- slide deck authoring
- data charts that should be produced from tables or plotting tools

## Required Output Standard

Unless the user explicitly asks otherwise, always deliver:
- `.drawio` source
- `PNG` export

Keep names, contents, and versions aligned.

## Reading Order

Read these references as needed:
- `references/academic-diagram-style.md`
  Use for academic-paper visual rules and readability checks.
- `references/figure-types.md`
  Use when deciding whether the target figure should be an architecture diagram, roadmap, or process flow.

Use this script when starting from scratch:
- `scripts/new-drawio-figure.ps1`
  Creates a clean starter `.drawio` file that opens in diagrams.net.

## Workflow

1. Identify the figure type and where it will appear in the paper.
2. Decide the right granularity so the new figure does not duplicate the role of another figure.
3. Build or revise the editable `.drawio` source first.
4. Export a `PNG` from the same content.
5. Check text density, box sizing, and A4 readability.
6. If the user already established a delivery rule, keep following that rule.

## Figure-Type Guidance

### System Architecture

Use architecture diagrams to show:
- modules
- boundaries
- data flow
- component interaction

The emphasis should be on system composition and runtime relationship.

### Technical Roadmap

Use technical roadmaps to show:
- research stages
- method progression
- experiment path
- stage outputs

The emphasis should be on progression rather than runtime structure.

### Workflow Or Process Figure

Use process figures to show:
- step order
- decision points
- branching
- loops or fallback paths

The emphasis should be on execution sequence and control logic.

## Practical Rules

- Prefer concise noun phrases inside nodes.
- Avoid paragraph-length node text.
- Use low-saturation colors and restrained decoration.
- Do not let architecture diagrams and roadmaps collapse into the same visual grammar.
- If the desktop draw.io app is unavailable, it is acceptable to generate standard `.drawio` XML directly, as long as diagrams.net can open it.
- When revising an existing figure, preserve the user's semantics unless a redesign is explicitly requested.

