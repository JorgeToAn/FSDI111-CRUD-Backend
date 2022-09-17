from flask import Flask, request

app = Flask(__name__)

from app.database import data_types


# ---------- GET ------------
@app.get("/data_types")
def index():
    out = data_types.scan()
    return out

@app.get("/data_types/integer")
def integers():
    out = data_types.select_by_type(name="Integer")
    return out

@app.get("/data_types/float")
def floats():
    out = data_types.select_by_type(name="Float")
    return out

@app.get("/data_types/boolean")
def booleans():
    out = data_types.select_by_type(name="Boolean")
    return out

@app.get("/data_types/string")
def string():
    out = data_types.select_by_type(name="String")
    return out

@app.get("/data_types/list")
def list():
    out = data_types.select_by_type(name="List")
    return out

@app.get("/data_types/dictionary")
def dictionary():
    out = data_types.select_by_type(name="Dictionary")
    return out

@app.get("/data_types/tuple")
def tuple():
    out = data_types.select_by_type(name="Tuple")
    return out

@app.get("/data_types/summary")
def summary():
    return "Summary"

@app.get("/about")
def about():
    return "About me"


# ---------- POST ------------
@app.post("/data_types")
def create_data_type():
    # dt_body = data_type body
    dt_body = request.json
    data_types.create(dt_body)
    return "", 204


# ---------- PUT ------------
@app.put("/data_types/<int:pk>")
def update_data_type(pk):
    dt_body = request.json
    data_types.update(dt_body, pk)
    return "", 204


# ---------- DELETE ------------
@app.delete("/data_types/<int:pk>")
def delete_data_type(pk):
    data_types.delete(pk)
    return "", 204