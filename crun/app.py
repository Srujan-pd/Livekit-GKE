from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def home():
    return "Cloud Run deployment by SRUJAN 🚀"

@app.route("/env")
def env():
    return f"ENV = {os.getenv('ENV', 'not-set')}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)

