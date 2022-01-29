from flask import *  
app = Flask(__name__)

@app.route('/')  
def home():  
      return render_template('index.html') 

@app.route('/signin')  
def signin():  
      return render_template('signin.html')

@app.route('/signup')  
def signup():  
      return render_template('signup.html')

@app.route('/faq')  
def faq():  
      return render_template('faq.html')

@app.route('/profile')  
def profilee():  
      return render_template('profile.html')

@app.route('/drive')  
def drive():  
      return render_template('drive.html')

@app.route('/signin',methods = ['POST'])
def signa():
    result = request.form
    return result

@app.route('/profile',methods = ['POST'])
def profile():
    result = request.form
    return result

if __name__ == '__main__':  
   app.run(debug = True)