from flask import Flask, request

app = Flask(__name__)

from app.database import data_types

RESPONSE = {
    "status": "OK"
}


# ---------- GET ------------
@app.get("/data_types")
def index():
    response = dict(RESPONSE)
    response["data_types"] = data_types.scan()
    return response

@app.get("/data_types/integer")
def integers():
    response = dict(RESPONSE)
    response["data_type"] = data_types.select_by_type(name="Integer")
    return response

@app.get("/data_types/float")
def floats():
    response = dict(RESPONSE)
    response["data_type"] = data_types.select_by_type(name="Float")
    return response

@app.get("/data_types/boolean")
def booleans():
    response = dict(RESPONSE)
    response["data_type"] = data_types.select_by_type(name="Boolean")
    return response

@app.get("/data_types/string")
def string():
    response = dict(RESPONSE)
    response["data_type"] = data_types.select_by_type(name="String")
    return response

@app.get("/data_types/list")
def list():
    response = dict(RESPONSE)
    response["data_type"] = data_types.select_by_type(name="List")
    return response

@app.get("/data_types/dictionary")
def dictionary():
    response = dict(RESPONSE)
    response["data_type"] = data_types.select_by_type(name="Dictionary")
    return response

@app.get("/data_types/tuple")
def tuple():
    response = dict(RESPONSE)
    response["data_type"] = data_types.select_by_type(name="Tuple")
    return response


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