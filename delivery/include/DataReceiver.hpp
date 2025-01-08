#ifndef DataReceiever_hpp
#define DataReceiver_hpp
#include <iostream>
#include <fstream>
#include <string>
#include "TcpServer.hpp"
namespace workspace
{
  namespace internship
  {
    /// @brief Permit to receive annotation trough Tcp communication
    class DataReceiver : public TcpServer
    {
      public:
        /// @brief Constructor
        /// @param p_ip
        /// @param p_port
        DataReceiver(std::string p_ip, int p_port);
        /// @brief Destructor
        ~DataReceiver();
        /// @brief To know if the DataReceiver success to connect to the Transmetter
        /// @return True if success, false if not.
        int isConnected();
        /// @brief To set the name of the file that will contain the annotation
        /// @param p_filename
        void setOutputFilename(std::string p_filename);
        /// @brief To get the name of the file that will be generated.
        /// @return
        std::string getInputFilename();
        /// @brief To receive the metadata 
        /// @return
      private:
        std::string m_ip;
        std::string m_filename;
        int m_port;
        bool m_connected;
    };
  }
}
#endif
