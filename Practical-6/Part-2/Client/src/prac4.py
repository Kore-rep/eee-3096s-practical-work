import busio
import digitalio
import board
import adafruit_mcp3xxx.mcp3008 as MCP
from adafruit_mcp3xxx.analog_in import AnalogIn
import threading
import time
import RPi.GPIO as GPIO;

def setup():
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
    currentSamplingTime = 2

    GPIO.setup(17, GPIO.IN, pull_up_down = GPIO.PUD_UP)
    GPIO.add_event_detect(17, GPIO.FALLING, callback = changeSamplingTime, bouncetime = 200)

def changeSamplingTime(channel):
    global samplingTimes, currentSamplingTime
    print(f"Sampling time will be changed from {samplingTimes[currentSamplingTime]}s to {samplingTimes[(currentSamplingTime + 1) % 3]}s after the next sample")
    currentSamplingTime = (currentSamplingTime + 1) % 3

def readValues():
    global temp, light, samplingTimes, currentSamplingTime
    while True:
        sleepTime = samplingTimes[currentSamplingTime]
        print(f"{str(round(time.time()-startTime))}s\t{str(temp.value)}\t\t{str(round((temp.voltage-0.5)/0.01, 2))}°C\t{str(light.value)}")
        time.sleep(sleepTime)

if __name__ == '__main__':
    setup()
    print("Runtime\tTemp Reading\tTemp\tLight Reading")
    global startTime
    startTime = time.time()
    x = threading.Thread(target=readValues)
    x.start()
    x.join()
