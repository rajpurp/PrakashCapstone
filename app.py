from flask import Flask
app = Flask(__name__)
@app.route("/")
def index():
    return "Hi, This is Prakash Rajpurohit's Udacity final project."
app.run(host="0.0.0.0", port=8080, debug=True)
