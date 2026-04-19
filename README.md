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

After installation:

```text
Restart Codex to pick up new skills.
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
