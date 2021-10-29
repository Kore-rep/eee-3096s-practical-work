from flask import Flask, render_template, request
app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])

def serve_gui():
    print(request.method)
    if 'sensOn' in request.form:
        print("Turn Sensor On")
    elif 'sensOff' in request.form:
        print("Turn Sensor Off")
    elif 'status' in request.form:
        print("Get Status")
    elif 'checkLog' in request.form:
        print("Print Logs")
    elif 'downLog' in request.form:
        print("Download Logs")
    elif 'exit' in request.form:
        print("Exit")
    return render_template('data_gui.html')

if __name__ == '__main__':
    app.run()
    #app.run(host='0.0.0.0', port=80)
