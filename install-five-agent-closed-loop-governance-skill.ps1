param(
    [string]$TargetRoot = "$HOME\.codex\skills"
)

$ErrorActionPreference = "Stop"

$repoRoot = $PSScriptRoot
$source = Join-Path $repoRoot "five-agent-closed-loop-governance"
$target = Join-Path $TargetRoot "five-agent-closed-loop-governance"
$legacyTarget = Join-Path $TargetRoot "five-agent-governance"

if (-not (Test-Path -LiteralPath $source)) {
    throw "Source skill folder not found: $source"
}

New-Item -ItemType Directory -Force -Path $TargetRoot | Out-Null

if (Test-Path -LiteralPath $target) {
    Remove-Item -LiteralPath $target -Recurse -Force
}

Copy-Item -LiteralPath $source -Destination $target -Recurse

if (Test-Path -LiteralPath $legacyTarget) {
    Remove-Item -LiteralPath $legacyTarget -Recurse -Force
    Write-Output "Removed legacy five-agent-governance from $legacyTarget"
}

Write-Output "Installed five-agent-closed-loop-governance to $target"
