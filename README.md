# fastapi-db-19

FastAPI + SQLAlchemy + PostgreSQL project.

## Setup (PowerShell)

```powershell
uv sync --locked
Copy-Item .env.example .env
```

Edit `.env` with your PostgreSQL connection URL. The local `.env` file is excluded from Git.

## Run

```powershell
Get-Content .env | ForEach-Object {
    if ($_ -match '^DATABASE_URL=(.+)$') {
        $env:DATABASE_URL = $Matches[1]
    }
}
.\.venv\Scripts\python.exe -m uvicorn main:app --reload
```

Open http://127.0.0.1:8000/docs.
The application creates missing database tables at startup.

## Save changes

```powershell
git add .
git commit -m "Update project"
git push origin main
```
