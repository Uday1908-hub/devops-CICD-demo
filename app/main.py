from fastapi import FastAPI
import os
from datetime import datetime, timezone

app = FastAPI(title="USECASE API")

APP_VERSION = os.getenv("APP_VERSION", "1.0.0")
ENVIRONMENT = os.getenv("ENVIRONMENT", "development")
TEAM_NAME = os.getenv("TEAM_NAME", "Platform Reliability")
APP_NAME = os.getenv("APP_NAME", "cloudnative-api")


@app.get("/health")
def health():
    return {
        "status": "healthy",
        "timestamp_utc": datetime.now(timezone.utc).isoformat(),
    }


@app.get("/info")
def info():
    return {
        "app": APP_NAME,
        "version": APP_VERSION,
        "environment": ENVIRONMENT,
        "team": TEAM_NAME,
    }
