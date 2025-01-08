#include <iostream>
#include <thread>
#include <fstream>
#include <unistd.h>
#include "DataReceiver.hpp"
#include "DataTransmetter.hpp"
#include "DataTypes.hpp"
#include "AnnotationFileReader.hpp"

using namespace std;

void start_client(std::string p_ip, int p_port, std::string p_filename) {
    workspace::internship::DataTransmetter l_client(p_ip, p_port);
    l_client.setInputFileName(p_filename);
    l_client.setIp("127.0.0.1");
    l_client.setPort(12300);
    if (l_client.getOutputFilename() != p_filename) {
        cout << "ClientFileManagement NOK" << endl;
    }
    else
    {
        cout << "good client file : " <<  l_client.getOutputFilename() << endl;
    }
     l_client.start() ;
}

void start_server(std::string p_ip, int p_port, std::string p_filename) {
    workspace::internship::DataReceiver l_server(p_ip, p_port);
    l_server.setOutputFilename(p_filename);
    l_server.setIp("127.0.0.1");
    l_server.setPort(12300);

    
    if (l_server.getInputFilename() != p_filename) {
        cout << "ServerFileManagement NOK" << endl;
    }
    else
    {
        cout << "good  server file: " << l_server.getInputFilename() << endl;
    }
    while (l_server.isConnected()) {
        usleep(1000); // getting data from the server and saving it in an output file
    }
    l_server.stop(); // closing all
}

int main(int argc, char* argv[]) {
    cout << "[Info] Application to test if all the requirements are satisfied." << endl;

    void* l_metadata = malloc(sizeof(metadata_t));
    workspace::internship::AnnotationFileReader l_reader("../data/annotation.txt", l_metadata);

    thread svrThd(start_server, "127.0.0.1", 12345, "../data/bb_annotation.txt");
    usleep(1000); // wait a while to let the server start before to start client
    thread cltThd(start_client, "127.0.0.1", 12345, "../data/annotation.txt");

    cout << "Filename : " << l_reader.getFilename() << endl;

    sleep(5); // allow threads to finish

    if (svrThd.joinable()) {
        svrThd.join();
    }
    if (cltThd.joinable()) {
        cltThd.join();
    }

    if (l_reader.open()) {
        metadata_t l_info;
        l_info.frameId = -1;
        while (l_reader.getNext()) {
            l_info = *(static_cast<metadata_t*>(l_metadata));
            cout << "FrameId = " << l_info.frameId << endl;
            cout << "\tCenter x = " << l_info.center.x << ", y = " << l_info.center.y << endl;
            cout << "\tBoundingBox = [upperLeft x = " << l_info.bb.upperLeft.x << ", y = " << l_info.bb.upperLeft.y
                 << "] [lowerRight x = " << l_info.bb.lowerRight.x << ", y = " << l_info.bb.lowerRight.y << "]" << endl;

            if ((l_info.center.x > 0) && (l_info.center.y > 0)) {
                if ((l_info.bb.lowerRight.x == -1) && (l_info.bb.lowerRight.y == -1) &&
                    (l_info.bb.upperLeft.x == -1) && (l_info.bb.upperLeft.y == -1)) {
                    cout << "AnnotationWriter NOK" << endl;
                    cout << "BoundingBox NOK" << endl;
                    break;
                }
            }
        }
        l_reader.close();
        if (l_info.frameId == -1) {
            cout << "AnnotationReader NOK" << endl;
        }
    } else {
        cout << "AnnotationWriter NOK" << endl;
        cout << "AnnotationReader NOK" << endl;
    }

    cout << "[Info] End of program" << endl;
    free(l_metadata);
    return 0;
}
