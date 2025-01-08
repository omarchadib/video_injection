# Definition

## Annotation

## Data Receiver

The receiver is a TCP server.
You should be able to give the IP address and port number trough a config file or by using parameter.
The Data Receiver should be ready to receive data (see DaTypes.hpp -> metadata_t), to insert the BoundingBox and to save it in an output file.

## Data Transmetter

The receiver is a TCP client.
You should be able to give the IP address and port number trough a config file or by using parameter.
The Data Transmetter should be able to transmit Data read from an input file.

## Class diagram

```meramaid
classDiagram
DataReceiver .. TcpServer
DataReceiver : bool isConnected()
DataReceiver : void setOutputFilename()
DataReceiver : string getInputFilename()
DataReceiver : string m_ip
DataReceiver : string m_filename
DataReceiver : int m_port
DataReceiver : int m_connected    **(modified from bool to int)**
DataTransmetter .. TcpClient
DataTransmetter : void setInputFileName()
DataTransmetter : string getOutputFilename()
DataTransmetter : string m_ip
DataTransmetter : int m_port
DataTransmetter : string m_filename
ItfAnnotationFileReader : virtual bool open()
ItfAnnotationFileReader : virtual bool getNext()
ItfAnnotationFileReader : virtual void close()
ItfAnnotationFileReader : string m_filename
TcpClient : string getIp()
TcpClient : int getPort()
TcpClient : void setIp()
TcpClient : void setPort()
TcpClient : int start()       **(modified from bool to int)**
TcpClient : void stop()
TcpClient : string m_ip
TcpClient : int m_port
TcpClient : int m_socket
TcpServer : string getIp()
TcpServer : int getPort()
TcpServer : void setIp()
TcpServer : void setPort()
TcpServer : bool start()
TcpServer : void stop()
TcpServer : string m_ip
TcpServer : int m_port
TcpServer : int m_socket
```

## Component diagram

![diag drawio](https://github.com/user-attachments/assets/76a9e57f-30bc-44bf-8e73-b2af179af2e1)


## Solution

  I choose to work with the file prog1.cpp (in 4_Sample/Intership/src/) to implemente the following requirements:
  Generation of an ouput file containing the bounding box for all the read points from the annotation file
  The bounding box should be a square 20 pix by 20 pix.
  When excuting the program in delivery/bin an output file should be saved in the following folder delivery/data and named bb_annotation.txt
  For the Annotation file reader create a class named AnnotationFileReader heriting from ItfAnnotationFileReader



You have to compile the code in the root folder by using the following command:

```bash
cmake -S . -B build
cmake --build build --target install
```

Then your production will be available in the folder named delivery

