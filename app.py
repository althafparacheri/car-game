"""
Simple Flask server for the Car Dodge Game.

Run with:
    python3 app.py

Then open your browser to:
    http://localhost:5000
"""

from flask import Flask, render_template

app = Flask(__name__)

# git checkout -b test-pull-request (testing pull request)

@app.route("/")
def index():
    return render_template("index.html")


if __name__ == "__main__":
    # host="0.0.0.0" makes it reachable from your Windows browser too,
    # not just from inside WSL.
    app.run(host="0.0.0.0", port=5000, debug=False)
