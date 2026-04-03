# Security Policy

## Supported Versions

The latest `main` branch is supported.
Older snapshots, forks, and unpublished local copies are not actively supported.

## Reporting a Vulnerability

Please avoid opening a public issue that includes exploit details, tokens, local paths, or sensitive data.

Preferred reporting order:
1. Use GitHub private vulnerability reporting if it is enabled for this repository.
2. If private reporting is not available, contact the repository owner privately before public disclosure.
3. Only open a public issue after sensitive details have been removed.

## Scope

This repository mainly contains:
- Markdown documentation
- A Codex skill definition
- A local PowerShell helper script

Security review should focus on:
- accidental secret exposure
- unsafe script behavior
- misleading installation instructions
- malicious or unexpected file changes in published skill content

## Maintainer Checklist

Before each public release or major update:
- verify that no secrets, tokens, API keys, or local machine paths are exposed
- review PowerShell changes before publishing
- keep documentation aligned with actual repository contents
- confirm that ignored files are truly local-only artifacts
- enable GitHub security features such as branch protection and secret scanning

## Notes for Users

Review any script before running it on your machine.
Do not store credentials inside this repository.
If you adapt this repository for automation, keep secrets in GitHub Secrets or another secure secret manager rather than tracked files.
