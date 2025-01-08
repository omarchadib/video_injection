#include "DataReceiver.hpp"

namespace workspace
{
  namespace internship
  {
    DataReceiver::DataReceiver(std::string p_ip, int p_port):
    TcpServer(p_ip, p_port), m_filename("/home/omar/Downloads/bb_text")
    {

    }
    DataReceiver::~DataReceiver()
    {
    }

    int DataReceiver::isConnected()
    {
       // Open socket in connected mode (TCP). 6 is TCP number
      int network_socket = socket(AF_INET, SOCK_STREAM, 6);
      if (  network_socket < 0 ) 
      {
        std::cerr << "ERROR WHILE OPENING LISTENING SOCKET:" << std::endl;
        return -1;
      }
      // Set server parameters
      struct sockaddr_in server_address;                          
      socklen_t address_length = sizeof(struct sockaddr_in);      

      server_address.sin_family       = AF_INET;                 
      server_address.sin_port         = htons(TcpServer::getPort());    
      server_address.sin_addr.s_addr  = INADDR_ANY;              

      // Bind socket to listening port
      int socket_error = bind(network_socket, (struct sockaddr *)&server_address, sizeof(struct sockaddr_in));
      if (socket_error < 0) 
      { 
        std::cerr << "ERROR WHILE BINDING SOCKET" << std::endl;
        return -1;
      }

      socket_error = listen(network_socket, 1);
      if (socket_error < 0) 
      {
        std::cerr << "ERROR WHILE SETTING UP LISTENING SOCKET" << std::endl;
        return -1;
      }

      // Wait for a connection 
      int client_socket = accept(network_socket, (struct sockaddr *) &server_address, &address_length); 
      if (client_socket < 0) 
      {
        std::cerr << "ERROR WHILE CONNECTING SOCKET" << std::endl;
        return -1;
      }     

      std::cout << " debug " << std::endl;
      std::cout << "Server accepted a clientttt" << std::endl;
      return client_socket;
    }



    void DataReceiver::setOutputFilename(std::string p_filename)
    {
      m_filename = p_filename;
    }
    std::string DataReceiver::getInputFilename()
    {
        return m_filename;
    }
  }
}
