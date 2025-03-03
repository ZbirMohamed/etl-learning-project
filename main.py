from scripts.db import engine
from sqlalchemy import text

with engine.connect() as conn:
    req = conn.execute(text("SELECT * FROM CUSTOMERS LIMIT 5"))

    for row in req:
        print(row)