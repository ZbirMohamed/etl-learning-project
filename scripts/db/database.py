import os
from dotenv import load_dotenv
from sqlalchemy import create_engine
from pydantic import BaseModel

load_dotenv(dotenv_path="../../.env")

engine = create_engine("postgresql+psycopg2://root:test@localhost/staging")

engine_core = create_engine("postgresql+psycopg2://root:test@localhost:5433/core")