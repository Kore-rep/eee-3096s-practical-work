#!/usr/bin/env python

import socket

TCP_IP = '127.0.0.1'
TCP_PORT = 5005
BUFFER_SIZE = 1024
MESSAGE = "Hello, World!"

def networkingSetup():
    print("Network setup...")
    TCP_IP = '127.0.0.1'
    TCP_PORT = 5005

    global BUFFER_SIZE, ENABLED
    ENABLED = True
    BUFFER_SIZE = 1024
    MESSAGE = "Hello, World!"
    global networkSocket
    networkSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    networkSocket.connect((TCP_IP, TCP_PORT))
    print("Done.")

if __name__ == '__main__':
    networkingSetup()
    while 1:
        data = networkSocket.recv(BUFFER_SIZE)
        serverMessage = data.decode()
        networkSocket.send('ACK'.encode())
        #print(serverMessage)
        if (serverMessage == "CHECK"):
            print(serverMessage)
        if (serverMessage == "SENDOFF"):
            print(serverMessage)
        if (serverMessage == "SENDON"):
            print(serverMessage)
