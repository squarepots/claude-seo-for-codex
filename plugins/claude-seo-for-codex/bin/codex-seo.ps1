$ErrorActionPreference = 'Stop'

$runtime = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..\scripts\runtime.py'))
if (-not (Test-Path -LiteralPath $runtime -PathType Leaf)) {
    Write-Error 'Claude SEO runtime is missing from the locked plugin snapshot.'
    exit 2
}

if (Get-Command py -ErrorAction SilentlyContinue) {
    & py -3 $runtime @args
    exit $LASTEXITCODE
}
if (Get-Command python3 -ErrorAction SilentlyContinue) {
    & python3 $runtime @args
    exit $LASTEXITCODE
}
if (Get-Command python -ErrorAction SilentlyContinue) {
    & python $runtime @args
    exit $LASTEXITCODE
}

Write-Error 'Python 3.10 or newer is required. Install Python, then run $seo setup.'
exit 2
