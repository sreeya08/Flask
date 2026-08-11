from flask import Flask,render_template,redirect,url_for,request

app = Flask(__name__)

@app.route('/')
def home():
    return 'flask server in progress'

#name(key) = sreeya(value), email=sreeyamalineni@gmail.com
@app.route('/getData',methods=['GET'])
def getData():
    name = request.args.get('name')
    email = request.args.get('email')
    return f"The name is {name}, and email is {email}"

@app.route('/getDatafromPOST',methods=['POST'])
def getDatafromPOST():
    # name = request.form['name']
    # email = request.form['email']
    # return f"The name is {name}, and email is {email}"

   #json format raw data we are reading
   data= request.get_json()
   name=data['name']
   email=data['email']
   return f"The name is {name}, and email is {email}"
if(__name__ == "__main__"):
   app.run(host='0.0.0.0',port=5002,debug=True)