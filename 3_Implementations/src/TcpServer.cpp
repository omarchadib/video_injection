#include "TcpServer.hpp"

namespace workspace
{
  namespace internship
  {
    TcpServer::TcpServer(std::string p_ip, int p_port):
    m_ip(p_ip), m_port(p_port), m_socket(-1)
    {

    }
    TcpServer::~TcpServer()
    {
      // if (m_socket != -1)
      // {
      //   close(m_socket);
      //   std::cout << "socket destroyed" << std::endl;
      // }
    }


    std::string TcpServer::getIp()
    {
        return m_ip;
    }
    int TcpServer::getPort()
    {
        return m_port;
    }
    void TcpServer::setIp(std::string p_ip)
    {
      m_ip = p_ip;
    }
    void TcpServer::setPort(int p_port)
    {
      m_port = p_port;
    }

    bool TcpServer::start()
    {
      // Open socket in connected mode (TCP). 6 is TCP number 
      m_socket = socket(AF_INET, SOCK_STREAM, 6);
      if ( m_socket < 0 ) 
      {
        std::cerr << "ERROR WHILE OPENING LISTENING SOCKET:" << std::endl;
        return false;
      }

      // Set server parameters
      struct sockaddr_in server_address;                          
      socklen_t address_length = sizeof(struct sockaddr_in);      

      server_address.sin_family       = AF_INET;                  
      server_address.sin_port         = htons(TcpServer::getPort());   
      server_address.sin_addr.s_addr  = INADDR_ANY;               

      // Bind socket to listening port
      int socket_error = bind(m_socket, (struct sockaddr *)&server_address, sizeof(struct sockaddr_in));
      if (socket_error < 0) 
      { 
        std::cerr << "ERROR WHILE BINDING SOCKET" << std::endl;
        return false;
      }
      socket_error = listen(m_socket, 1);
      if (socket_error < 0) 
      {
        std::cerr << "ERROR WHILE SETTING UP LISTENING SOCKET" << std::endl;
        return false;
      }
    
      // Wait for a connection 
      int client_socket = accept(m_socket, (struct sockaddr *) &server_address, &address_length); 
      if (client_socket < 0) 
      {
        std::cerr << "ERROR WHILE CONNECTING SOCKET" << std::endl;
        return false;
      }     
      std::cout << "Server accepted a client000" << std::endl;
      return true;
    }
    void TcpServer::stop()
    {
      if (m_socket >= 0)
      {
        close(m_socket);
        
        std::cout << "Server disconnection"<< std::endl;
      } 
      else 
      {
        std::cout << " Server socket already at -1" << std::endl;
      }
    }
  }
}
