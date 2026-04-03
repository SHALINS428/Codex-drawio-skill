# Publishing To GitHub

This repository is ready to publish.

## Option 1: Publish With GitHub Web Upload

Use this option if `git` or `gh` is not installed locally.

1. Open GitHub in the browser and create a new repository.
2. Use one of these names:
   - `codex-drawio-skill`
   - `academic-drawio-skill`
   - `drawio-skill-for-codex`
3. Do not initialize the repository with a README, `.gitignore`, or license, because this package already contains them.
4. Upload the contents of this folder, or upload the prepared zip after extracting it locally.
5. Commit the uploaded files.

## Option 2: Publish With Git After Installation

If `git` becomes available later:

```powershell
cd D:\SocialBot-Detection\output\github\drawio-skill
git init
git add .
git commit -m "Initial commit: add drawio Codex skill"
git branch -M main
git remote add origin <your-repo-url>
git push -u origin main
```

## What To Publish

Publish the whole repository root, including:
- `README.md`
- `LICENSE`
- `.gitignore`
- `skill/drawio/...`

Do not publish only `skill/drawio` unless you intentionally want a minimal repo without human-facing docs.

## Install After Publishing

Users can install the skill by copying:

```text
skill/drawio
```

into their local Codex skills directory.

