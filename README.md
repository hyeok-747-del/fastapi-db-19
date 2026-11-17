# fastapi-db-19

FastAPI + SQLAlchemy + PostgreSQL project.

## Setup (PowerShell)

```powershell
.\setup.ps1
```

Edit `.env` with your PostgreSQL connection URL. The local `.env` file is excluded from Git.

## Run

```powershell
.\start.ps1
```

Open http://127.0.0.1:8000/docs.
The application creates missing database tables at startup. If the database connection fails, `/docs` remains available and database endpoints return HTTP 503. Correct `DATABASE_URL` in `.env` and restart the server.

The setup script installs the official SQLAlchemy pure Python build for Windows DLL compatibility. See https://docs.sqlalchemy.org/en/21/intro.html#installing-the-cython-extensions .

## Save changes

```powershell
git add .
git commit -m "Update project"
git push origin main
```
