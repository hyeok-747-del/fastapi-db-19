$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot
uv sync --locked
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
# Use SQLAlchemy's supported pure Python build on this Windows environment.
$env:DISABLE_SQLALCHEMY_CEXT = "1"
uv pip install --python .\.venv\Scripts\python.exe --no-binary sqlalchemy --reinstall-package sqlalchemy sqlalchemy==2.1.8
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
if (!(Test-Path .env)) { Copy-Item .env.example .env }
