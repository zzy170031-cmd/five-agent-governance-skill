# five-agent-governance-skill

Public standalone repository for the `five-agent-governance` Codex skill.

This repository packages the skill separately from any product repo so it can be installed and reused across machines and projects.

## Included

- `five-agent-governance/`
  - `SKILL.md`
  - `agents/openai.yaml`
  - `references/*`
- `install-five-agent-governance-skill.ps1`

## Install with Codex skill-installer

If your Codex installation already has the built-in `skill-installer` skill, install directly from GitHub with:

```powershell
python "$HOME\\.codex\\skills\\.system\\skill-installer\\scripts\\install-skill-from-github.py" --repo zzy170031-cmd/five-agent-governance-skill --path five-agent-governance
```

If `python` is not available on your PATH, use the full interpreter path instead:

```powershell
C:\Users\Administrator\AppData\Local\Programs\Python\Python312\python.exe "$HOME\\.codex\\skills\\.system\\skill-installer\\scripts\\install-skill-from-github.py" --repo zzy170031-cmd/five-agent-governance-skill --path five-agent-governance
```

After installation:

```text
Restart Codex to pick up new skills.
```

## New machine quick start

On a fresh computer, the shortest path is:

1. Clone or open this repository.
2. Install the skill with `skill-installer` or `install-five-agent-governance-skill.ps1`.
3. Restart Codex.
4. Start a new project thread with the five-agent startup message below.

The skill installs to:

```text
%USERPROFILE%\.codex\skills\five-agent-governance
```

## Manual install

From the repository root:

```powershell
powershell -ExecutionPolicy Bypass -File .\install-five-agent-governance-skill.ps1
```

Default install target:

```text
%USERPROFILE%\.codex\skills\five-agent-governance
```

## Typical startup message

```text
Enable five-agent-governance real five-subagent mode in this project thread. Launch Maxwell, Dirac, Parfit, Wegener, and Popper as real subagents. Current stage: new project startup.
```

## Repository goal

This package keeps the governance system portable and versioned independently from application repositories, while preserving the same real five-subagent workflow:

- `Maxwell`
- `Dirac`
- `Parfit`
- `Wegener`
- `Popper`

## Versioning

This repository is intended to carry standalone tagged releases so the skill can be reused across machines without depending on a product repository history.
