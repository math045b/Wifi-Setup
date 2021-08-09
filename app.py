from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route("/")
def index():
    return "<p>Hello, World!</p>"

@app.route("/test")
def test():
    return jsonify({'test':'test'})
