# Run-Wonderland.ps1
# Runs the original Wonderland Bash puzzle script from PowerShell without
# changing its behavior. Requires Git for Windows (Git Bash).
#
# Usage:
#   1. Save your original Bash script as wonderland.sh in this same folder.
#   2. Open PowerShell in this folder.
#   3. Run: .\Run-Wonderland.ps1
#
# If PowerShell blocks local scripts, use this for the current process only:
#   Set-ExecutionPolicy -Scope Process Bypass
#   .\Run-Wonderland.ps1

$ErrorActionPreference = 'Stop'

$scriptPath = Join-Path $PSScriptRoot 'wonderland.sh'

if (-not (Test-Path -LiteralPath $scriptPath -PathType Leaf)) {
    throw "Could not find '$scriptPath'. Save the original Bash script as wonderland.sh beside this PowerShell launcher."
}

# Locate Git Bash from common Git for Windows installation paths, then PATH.
$candidates = @(
    (Join-Path $env:ProgramFiles 'Git\bin\bash.exe'),
    (Join-Path $env:ProgramFiles 'Git\usr\bin\bash.exe'),
    (Join-Path ${env:ProgramFiles(x86)} 'Git\bin\bash.exe'),
    (Join-Path ${env:ProgramFiles(x86)} 'Git\usr\bin\bash.exe')
)

$bash = $candidates | Where-Object { $_ -and (Test-Path -LiteralPath $_ -PathType Leaf) } | Select-Object -First 1

if (-not $bash) {
    $bashCommand = Get-Command bash.exe -ErrorAction SilentlyContinue
    if ($bashCommand) {
        $bash = $bashCommand.Source
    }
}

if (-not $bash) {
    throw "Git Bash was not found. Install Git for Windows, then run this launcher again."
}

# Run from the launcher's directory so relative paths behave as expected.
Push-Location $PSScriptRoot
try {
    & $bash $scriptPath
    if ($LASTEXITCODE -ne 0) {
        throw "The Bash puzzle script exited with code $LASTEXITCODE."
    }
}
finally {
    Pop-Location
}
