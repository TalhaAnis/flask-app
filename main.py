from flask import Flask, request
from datetime import datetime
app = Flask(__name__)


@app.route('/',methods = ['POST'])
def login():
    fileName = datetime.now().strftime("/%d%m%Y-%H%M%S.txt")
    with open(fileName, 'w') as out_file:
        out_file.write(request.data.decode('utf-8'))
    return 'Data written to file ' + fileName, 200

if __name__ == '__main__':    
    app.run(host='0.0.0.0', debug = False)