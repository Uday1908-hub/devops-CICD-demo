import os
import sys

import pytest
from fastapi.testclient import TestClient

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))
from main import app

client = TestClient(app)


def test_health_returns_ok():
    response = client.get("/health")
    assert response.status_code == 200
    data = response.json()
    assert data["status"] == "healthy"
    assert "timestamp_utc" in data


def test_info_returns_expected_keys():
    response = client.get("/info")
    assert response.status_code == 200
    data = response.json()
    assert "app" in data
    assert "version" in data
    assert "environment" in data
    assert "team" in data


def test_info_app_name():
    response = client.get("/info")
    assert response.json()["app"] == "usecase-api"
