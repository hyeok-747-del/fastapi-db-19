$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot
Get-Content -LiteralPath .env | ForEach-Object {
    if ($_ -match '^DATABASE_URL=(.+)$') { $env:DATABASE_URL = $Matches[1] }
}
& .\.venv\Scripts\python.exe -m uvicorn main:app --host 127.0.0.1 --port 8000
