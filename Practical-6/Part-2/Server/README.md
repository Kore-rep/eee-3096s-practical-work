## A Simple Server with Python Flask for EEE3095S
### LNGANG002 & BTJMAL001

This is a repo for the python flask server required. It is hosted on a Raspberry Pi 0W using Balena for deployment.
The server awaits sensor data from a client with a hardcoded IP address, also hosted using Balena.

The server is capable of requesting a client's status, storing the sensor data provided to it, enabling/disabling the sensors on the client, checking the last 10 sensor readings and downloading the log data.

