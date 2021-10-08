import busio
import digitalio
import board
import threading
import RPi.GPIO as GPIO
from time import time, sleep
import adafruit_mcp3xxx.mcp3008 as MCP
from adafruit_mcp3xxx.analog_in import AnalogIn

def print_sensor_vals(start_time, temp, ldr):
    print(f"{round(time()-start_time)}s\t{temp.value}\t \t{round(((temp.voltage-0.5)/0.01), 2)}\t{round(ldr.value, 2)}")


def cycle_sample_time(channel):
    global current_sampling_time_index, sampling_times
    print(f"Changing from {sampling_times[current_sampling_time_index]}s to {sampling_times[(current_sampling_time_index+1)%3]}s after the next sample")
    current_sampling_time_index = (current_sampling_time_index +1) %3

sampling_times = [10, 5, 1]
current_sampling_time_index = 0

#create the spi bus
spi = busio.SPI(clock=board.SCK, MISO=board.MISO, MOSI=board.MOSI)

# create the cs (chip select)
cs = digitalio.DigitalInOut(board.D5)


# create the mcp object
mcp = MCP.MCP3008(spi, cs)

GPIO.setup(17, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.add_event_detect(17, GPIO.FALLING, callback=cycle_sample_time, bouncetime=200)
    
start_time = time()
ldr = AnalogIn(mcp, MCP.P2)
temp = AnalogIn(mcp, MCP.P1)
print("Runtime\tTemp Reading\tTemp\tLight Reading")
x = threading.Thread(target=print_sensor_vals, args=(start_time, temp, ldr))
while True:
    x.start()
    x.join()
    wait_time = sampling_times[current_sampling_time_index]
    sleep(wait_time)
    
