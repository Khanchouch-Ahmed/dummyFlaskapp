from app import app
version = '1.0.0'
@app.route('/')
def hello_world():
    return 'Hello, World!'
@app.route('/french')
def french_hello_world():
    return 'Bonjouuuugh'
@app.route('/version')
def get_version():
    return version