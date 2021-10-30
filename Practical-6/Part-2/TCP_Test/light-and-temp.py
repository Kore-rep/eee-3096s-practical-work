import busio
import digitalio
import board
import adafruit_mcp3xxx.mcp3008 as MCP
from adafruit_mcp3xxx.analog_in import AnalogIn
import threading
import time
import RPi.GPIO as GPIO;
import socket
from datetime import datetime

def networkingSetup():
    print("Network setup...")
    TCP_IP = '127.0.0.1'
    TCP_PORT = 5005
    global BUFFER_SIZE
    BUFFER_SIZE = 1024
    MESSAGE = "Hello, World!"
    global networkSocket
    networkSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    networkSocket.connect((TCP_IP, TCP_PORT))
    print("Done.")


def setup():
    print("Board setup...")
    # create the spi bus
    spi = busio.SPI(clock=board.SCK, MISO=board.MISO, MOSI=board.MOSI)

    # create the cs (chip select)
    cs = digitalio.DigitalInOut(board.D5)

    # create the mcp object
    mcp = MCP.MCP3008(spi, cs)

    global temp, light
    temp = AnalogIn(mcp, MCP.P1)
    light = AnalogIn(mcp, MCP.P2)

    global samplingTimes, currentSamplingTime
    samplingTimes = [10, 5 , 1]
    currentSamplingTime = 1

    GPIO.setup(17, GPIO.IN, pull_up_down = GPIO.PUD_UP)
    GPIO.add_event_detect(17, GPIO.FALLING, callback = changeSamplingTime, bouncetime = 200)
    print("Done.")

def changeSamplingTime(channel):
    global samplingTimes, currentSamplingTime
    print(f"Sampling time will be changed from {samplingTimes[currentSamplingTime]}s to {samplingTimes[(currentSamplingTime + 1) % 3]}s after the next sample")
    currentSamplingTime = (currentSamplingTime + 1) % 3

def readValues():
    global temp, light, samplingTimes, currentSamplingTime, networkSocket
    while True:
        sleepTime = samplingTimes[currentSamplingTime]
        #print(f"{str(round(time.time()-startTime))}s\t{str(temp.value)}\t\t{str(round((temp.voltage-0.5)/0.01, 2))}°C\t{str(light.value)}")
        now = datetime.now()
        timestamp = now.strftime("%H:%M:%S")
        temp_value = str(temp.value)
        #temp_volts = str(round((temp.voltage-0.5)/0.01, 2))
        light_val = str(light.value)
        data_str = f"SENSORS#{timestamp}${temp_value}${light_val}"
        print(data_str)
        networkSocket.send(data_str.encode())
        time.sleep(sleepTime)

if __name__ == '__main__':
    setup()
    networkingSetup()
    print("Runtime\tTemp Reading\tTemp\tLight Reading")
    global startTime, networkSocket, BUFFER_SIZE
    #startTime = time.time()
    x = threading.Thread(target=readValues)
    x.start()
    while 1:
        data = networkSocket.recv(BUFFER_SIZE)
    print(data.decode())
    x.join()
