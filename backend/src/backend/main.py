from fastapi import FastAPI

from backend.core.config import settings

app = FastAPI()


@app.get("/")
async def read_root():
    return {"message": "Hello AI Life Log"}


@app.get("/config-test")
async def config_test():
    return {
        "database": settings.postgres_db,
        "host": settings.postgres_host,
        "port": settings.postgres_port,
    }
