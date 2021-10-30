#!/usr/bin/env python

import socket, time

print("Starting...")
TCP_IP = '127.0.0.1'
TCP_PORT = 5005
BUFFER_SIZE = 1024  # Normally 1024, but we want fast response

print("Creating and binding socket...")
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((TCP_IP, TCP_PORT))
print("Done.")

print("Waiting for client..")
s.listen(1)
conn, addr = s.accept()
print ('Connection address:', addr)
try:
    while 1:
        data = conn.recv(BUFFER_SIZE)
        if not data: continue
        print ("received data:", data.decode())
        conn.send(data)  # echo
except KeyboardInterrupt:
    conn.close()
finally:
    conn.close()