#!/usr/bin/env python

import socket, time

print("Starting...")
TCP_IP = '127.0.0.1'
TCP_PORT = 5005
BUFFER_SIZE = 1024  # Normally 1024, but we want fast response

print("Creating and binding socket...")
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
s.bind((TCP_IP, TCP_PORT))
print("Done.")

def sendCommand(command):
    
        data = command.encode()
        print(command)
        conn.send(data)
        data = conn.recv(BUFFER_SIZE)
        print(data.decode())

print("Waiting for client..")
s.listen(1)
conn, addr = s.accept()
print ('Connection address:', addr)
counter = 0
try:
    while 1:
        data = conn.recv(BUFFER_SIZE)
        if not data: continue
        print (counter, data.decode())
        if counter % 5 == 0:
            sendCommand("CHECK")
            print(data.decode())
        elif counter % 9 == 0:
            sendCommand("SENDOFF")
        elif counter % 14 == 0:
            sendCommand("SENDON")
        
        counter += 1
except KeyboardInterrupt:
    conn.close()
finally:
    conn.close()