from flask import Flask,render_template,request
Index=Flask(__name__)

# POST PROGRAM
@Index.route('/')
def index():
    return render_template('signup.html')
@Index.route('/postData',methods=['POST'])
def postData():
    username=request.form['username']
    email=request.form['email']
    address=request.form['address']
    password=request.form['password']
    if username  is None or len(username)<2:
        return render_template('signup.html',err="Invalid name")
    if email is None:
        return render_template('signup.html',err="Invalid email")
    if address is None:
        return render_template('signup.html',err="Invalidmaddress")
    if password is None or len(password)<4:
        return render_template('signup.html',err="Invalid password")
    return render_template('signup.html',msg="submited successfully")

if(__name__=="__main__"):
    Index.run(host= "0.0.0.0",port=150,debug=True)