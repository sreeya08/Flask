from flask import Flask

app = Flask(__name__)

@app.route("/marks/<subject>/<float:marks>")
def marks(subject, marks):
    return f"Subject: {subject}<br>Marks: {marks}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)

from flask import Flask
import uuid

app = Flask(__name__)

@app.route('/generate')
def generate():
    id = uuid.uuid4()
    return f"the Generated UUID: {id}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)


from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
@app.route("/home")
def home():
    return render_template("resume.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)