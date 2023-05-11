from flask import Flask
app = Flash(__name__)

@app.route("/hello",methods=['GET'])
def helloworld():
    return "Hello World."

app.run(host="0.0.0.0",port=9090)
