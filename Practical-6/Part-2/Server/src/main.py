from flask import Flask, render_template, request, send_file
import socket
import threading
import os
from datetime import datetime, timedelta

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def serve_gui():
    global sensorOn, lastChecked, sensorReadings, logsDate
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
        checkLog()
        print("Print Logs")
    elif 'exit' in request.form:
        print("Exit")
        exit()
    return render_template("data_gui.html", sensorOn=sensorOn, lastChecked=lastChecked, last10Logs=sensorReadings, logsDate=logsDate)

@app.route('/download')
def downloadFile():
    currentDate = datetime.now().strftime("%d%m%Y")
    path = currentDate + '.csv'
    return send_file(path, as_attachment=True)

def setup():
    global TCP_IP, TCP_PORT, BUFFER_SIZE, sensorOn, sensorReadings
    sensorOn = True;
    sensorReadings=[""]
    # TCP_IP = '41.114.231.2'
    TCP_IP = '0.0.0.0'
    TCP_PORT = 5005
    BUFFER_SIZE = 1024


    global s
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.bind((TCP_IP, TCP_PORT))
    s.listen(1)

def sendCommand(command):
    global conn, lastChecked, sensorOn
    data = command.encode()
    print(command)
    conn.send(data)
    data = conn.recv(BUFFER_SIZE)
    checkData = data.decode()
    if (checkData.split("#")[0] == "STATUS"):
        lastChecked = checkData.split("#")[1].split("$")[0]
        sensorOn = eval(checkData.split("#")[1].split("$")[1])
    print(checkData)

def runApp():
    app.run(host='0.0.0.0', port=80)
    # app.run()

def runServer():
    global conn, sensorOn
    conn, addr = s.accept()

    while sensorOn:
        data = conn.recv(BUFFER_SIZE)
        if not data: break
        checkSensor = data.decode().split("#")
        if (checkSensor[0] == "SENSORS"):
            currentDate = datetime.now().strftime("%d%m%y")
            try:
                logFile = open(f'{currentDate}.csv', 'a')
                sensorReadings = checkSensor[1].split("$")
                logFile.write(sensorReadings[0] + ',' + sensorReadings[1] + ',' + sensorReadings[2] + '\n')
            finally:
                logFile.close()
    conn.close()

def checkLog():
    global sensorReadings, logsDate
    dateOffset = 0;
    fileFound = False
    while ((dateOffset <= 5) and (fileFound == False)):
        currentDate = datetime.now() - timedelta(days=dateOffset)
        try:
            logFile = open(f'{currentDate.strftime("%d%m%y")}.csv', 'r')
            sensorReadings = logFile.readlines()[-10:]
            for i in range(len(sensorReadings)):
                tempReading = sensorReadings[i].split(",")
                sensorReadings[i] = f"At {tempReading[0]} a temperature reading of {str(round((float(tempReading[1])-0.5)/0.01, 2))}°C and light reading of {tempReading[2]} was recorded"
            logsDate = 'Last 10 logs from ' + currentDate.strftime("%d %B %Y")
            logFile.close()
            fileFound = True
        except:
            dateOffset += 1

    if fileFound == False:
        sensorReadings = ['No data recorded in the last 5 days']


if __name__ == '__main__':
    setup()
    global lastChecked, logsDate
    lastChecked = datetime.now().strftime("%H:%M:%S")
    logsDate = ""

    appThread = threading.Thread(target=runApp)
    serverThread = threading.Thread(target=runServer)

    appThread.start()
    serverThread.start()

    appThread.join()
    serverThread.join()
