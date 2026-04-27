$ErrorActionPreference = 'Stop'

$ClaudeDir   = Join-Path $env:USERPROFILE '.claude'
$Target      = Join-Path $ClaudeDir 'CLAUDE.md'
$ProfilesDir = Join-Path $ClaudeDir 'sensei-profiles'
$Source      = Join-Path $PSScriptRoot 'CLAUDE.md'

New-Item -ItemType Directory -Force -Path $ClaudeDir | Out-Null

if (Test-Path $Target) {
    $Timestamp = Get-Date -Format 'yyyyMMddTHHmmss'
    $Backup    = "$Target.backup.$Timestamp"
    Copy-Item $Target $Backup
    Write-Host "Existing CLAUDE.md backed up to: $Backup"
}

Copy-Item $Source $Target

New-Item -ItemType Directory -Force -Path $ProfilesDir | Out-Null

Write-Host "Sensei is installed and active."
Write-Host "  Instructions: $Target"
Write-Host "  Profiles:     $ProfilesDir"
