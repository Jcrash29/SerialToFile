import serial
from serial.tools import list_ports
import os

if __name__=='__main__':
  print("Hello World:\nThe Following Ports are available:")

  ports = list()
  for port,name,id in list_ports.comports():
    ports.append(port)
  print ports[0]
  ser = serial.Serial(ports[0], timeout = 1)

  print(ser.name)
  with open('output.txt','a+',0) as file:
    while True:
      line = ser.readline()
      if(line != ""):
        print(line)
        file.write(line + '\n')
        file.flush()
        os.fsync(file)
