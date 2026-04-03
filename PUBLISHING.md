# Publishing to GitHub

This repository is already structured for public GitHub publication.

## Recommended Repository Metadata

Suggested repository name:
- `drawio-skill`
- `codex-drawio-skill`
- `academic-drawio-skill`

Suggested repository description:
- `Codex skill for creating editable academic diagrams in draw.io / diagrams.net with PNG export.`

Suggested GitHub topics:
- `codex`
- `skill`
- `drawio`
- `diagrams-net`
- `academic-diagrams`
- `thesis-tools`

## Publish with Git in CMD

Use the repository root:

```cmd
cd /d <your-local-path>\drawio-skill
git init
git add .
git commit -m "Initial commit: add drawio Codex skill"
git branch -M main
git remote add origin <your-repo-url>
git push -u origin main
```

If this folder is already a Git repository, skip `git init`.

If the remote already exists, use:

```cmd
git remote -v
git push -u origin main
```

## What to Publish

Publish the whole repository root, including:
- `README.md`
- `PUBLISHING.md`
- `SECURITY.md`
- `LICENSE`
- `.gitignore`
- `skill/drawio/...`

Do not publish only `skill/drawio` unless you intentionally want a minimal package without top-level docs.

## Recommended GitHub Settings

After publishing, enable these features in the GitHub repository settings:
- Branch protection for `main`
- Secret scanning
- Dependency graph
- Dependabot alerts
- Private vulnerability reporting if available

## Install After Publishing

Users only need to copy this folder into their local Codex skills directory:

```text
skill/drawio
```
