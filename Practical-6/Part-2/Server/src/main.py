from flask import Flask, render_template, request
import socket
import threading
import datetime

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def serve_gui():
    global sensorOn
    # print(request.method)
    if 'sensOn' in request.form:
        if (sensorOn == False):
            sendCommand("SENDON")
            sensorOn = True;
            print("Turn Sensor On")
    elif 'sensOff' in request.form:
        if (sensorOn == True):
            sendCommand("SENDOFF")
            sensorOn = False;
            print("Turn Sensor Off")
    elif 'status' in request.form:
        sendCommand("CHECK")
        print("Get Status")
    elif "checkLog" in request.form:
        print("Print Logs")
    elif "downLog" in request.form:
        print("Download Logs")
    elif 'exit' in request.form:
        Exit;
        print("Exit")
    return render_template("data_gui.html")


def setup():
    global TCP_IP, TCP_PORT, BUFFER_SIZE, sensorOn
    TCP_IP = '0.0.0.0'
    TCP_PORT = 5005
    BUFFER_SIZE = 1024

    sensorOn = False;

    global s
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.bind((TCP_IP, TCP_PORT))
    s.listen(1)

def sendCommand(command):
    global conn
    data = command.encode()
    print(command)
    conn.send(data)
    data = conn.recv(BUFFER_SIZE)
    print(data.decode())

def runApp():
    app.run(host='0.0.0.0', port=80)
    # app.run()

def runServer():
    global conn
    conn, addr = s.accept()

    while 1:
        data = conn.recv(BUFFER_SIZE)
        if not data: break
        checkSensor = data.decode().split("#")
        if (checkSensor[0] == "SENSORS"):
            currentDate = datetime.now().strftime("%d%m%Y")
            try:
                logFile = open((currentDate + '.csv'), 'a')
                sensorReadings = checkSensor[1].split("$")
                logFile.write(sensorReadings[0] + ',' + sensorReadings[1] + ',' + sensorReadings[2] + '\n')
            finally:
                logFile.close()
    conn.close()

if __name__ == '__main__':
    setup()

    appThread = threading.Thread(target=runApp)
    serverThread = threading.Thread(target=runServer)

    appThread.start()
    serverThread.start()

    appThread.join()
    serverThread.join()
