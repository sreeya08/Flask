from flask import Flask, render_template, redirect, url_for

app = Flask(__name__)

@app.route("/")
def home():
    return redirect(url_for("indexPage"))

@app.route("/index")
def indexPage():
    return render_template("index.html")

@app.route("/about")
def aboutPage():
    return render_template("about1.html")




from flask import Flask,render_template,redirect,url_for,request

app = Flask(__name__)

#name(key) = sreeya(value), batch-no pfs-054
@app.route('/getData',methods=['GET'])
def getData():
    name = request.args.get('name')
    batchno = request.args.get('batchno')
    return f"The name is {name}, and batchno is {batchno}"

@app.route('/getDatafromPOST',methods=['POST'])
def getDatafromPOST():
    data= request.get_json()
    name=data['name']
    skill=data['skill']
    return f"The name is {skill}, and skill is {skill}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5005, debug=True)