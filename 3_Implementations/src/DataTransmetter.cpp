#include "DataTransmetter.hpp"
#include <string>
namespace workspace
{
  namespace internship
  {
    DataTransmetter::DataTransmetter(std::string p_ip, int p_port):
    TcpClient(p_ip, p_port), m_filename("text.txt")
    {
    }
    DataTransmetter::~DataTransmetter()
    {
    }
    void DataTransmetter::setInputFileName(std::string p_filename)
    {
      m_filename = p_filename;
    }
    std::string DataTransmetter::getOutputFilename()
    {
        return m_filename;
    }


  }
    
  }

