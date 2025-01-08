#include "TcpClient.hpp"

namespace workspace
{
  namespace internship
  {
    TcpClient::TcpClient(std::string p_ip, int p_port):
    m_ip(p_ip), m_port(p_port), m_socket(-1)
    {

    }
    TcpClient::~TcpClient()
    {
    }
    std::string TcpClient::getIp()
    {
        return m_ip;
    }
    int TcpClient::getPort()
    {
        return m_port;
    }
    void TcpClient::setIp(std::string p_ip)
    {
      m_ip = p_ip;
    }
    void TcpClient::setPort(int p_port)
    {
      m_port = p_port;
    }

    int TcpClient::start()
    {
    
      // Establish connection using TcpClient
      int client_socket=socket(AF_INET, SOCK_STREAM, 6);

      // Set client parameters
      const char* ip_cstr = TcpClient::getIp().c_str();                                 
      struct sockaddr_in server_address;
      server_address.sin_family       = AF_INET;                                        
      server_address.sin_port         = htons (TcpClient::getPort());                   
      server_address.sin_addr.s_addr  = inet_addr(ip_cstr);                             
    
      // Connect socket to server
      int socket_error = connect( client_socket, (struct sockaddr *) &server_address, sizeof (struct sockaddr_in) );
      if (socket_error < 0) 
      {
        std::cerr << "ERROR WHILE CONNECTING SOCKET" << std::endl;
        return -1;
      }

      std::cout << "Client connected succesfully1111&S" << std::endl;
      return client_socket;
    }

    void TcpClient::stop()
    {
      close(m_socket);
      m_socket = -1;
      std::cout << "Client Disconnection " << std::endl;
    }
  }
}
