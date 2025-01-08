#include <iostream>
#include <thread>
#include <fstream>
#include <unistd.h>

#include "DataReceiver.hpp"
#include "DataTransmetter.hpp"
#include "DataTypes.hpp"
#include "AnnotationFileReader.hpp"

#include <mutex>
#include <condition_variable>
#include <filesystem>

using namespace std;

std::mutex mtx;
std::condition_variable cv;
bool server_ready = false;


void start_client(std::string p_ip, int p_port, std::string p_filename) {
    {
        std::unique_lock<std::mutex> lock(mtx);
        cv.wait(lock, [] { return server_ready; }); // Wait until the server is ready
    }
    
    workspace::internship::DataTransmetter l_client(p_ip, p_port);
    l_client.setInputFileName(p_filename);

    int socket = l_client.start();
    if (socket <= 0)
    {
        cerr << "Client: Failed to connect. Socket: " << socket << endl;
        return;
    }
    void* l_metadata = malloc(sizeof(metadata_t));
    workspace::internship::AnnotationFileReader l_reader(p_filename, l_metadata);

    if (l_reader.open()) {
        metadata_t l_info;
        l_info.frameId = -1;
        while (l_reader.getNext()) {
            l_info = *(static_cast<metadata_t*>(l_metadata));

            // Serialize bounding box data into a string
            std::ostringstream metadata_stream;
            metadata_stream << "FrameId=" << l_info.frameId << ",";
            metadata_stream << "Center(x=" << l_info.center.x << ",y=" << l_info.center.y << "),";
            metadata_stream << "BoundingBox(upperLeft(x=" << l_info.bb.upperLeft.x << ",y=" << l_info.bb.upperLeft.y << "),";
            metadata_stream << "lowerRight(x=" << l_info.bb.lowerRight.x << ",y=" << l_info.bb.lowerRight.y << "))";
            metadata_stream << "\n";

            std::string metadata = metadata_stream.str();
            // Send data over TCP
            ssize_t bytes_sent = send(socket, metadata.c_str(), metadata.size(), 0);
            if (bytes_sent < 0)
            {
                std::cerr << "Client: Failed to send data." << std::endl;
            }
            cout << "bytes sent: ," << metadata.size() << endl;
        }
        l_reader.close();
        if (l_info.frameId == -1) {
            cout << "AnnotationReader NOK" << endl;
        }
    } else {
        cout << "AnnotationWriter NOK" << endl;
        cout << "AnnotationReader NOK" << endl;
    }

    cout << "tracking client socket : " << socket << endl;
    free(l_metadata);
    l_client.stop();
}

void start_server(std::string p_ip, int p_port, std::string p_filename) {
    workspace::internship::DataReceiver l_server(p_ip, p_port);
    l_server.setOutputFilename(p_filename);

    {
        std::lock_guard<std::mutex> lock(mtx);
        server_ready = true;
        cv.notify_one(); // Notify the client that the server is ready
    }

    int socket = l_server.isConnected();
    if (socket <= 0) 
    {
        return;
    }
    std::ofstream output_file(l_server.getInputFilename(), std::ios::binary);
    if (!output_file.is_open())
    {
        cerr << "Server: Error opening the output file." << endl;
        return;
    }
    //Receive data over TCP
    char buffer[100024];
    while (true)
    {
        ssize_t bytes_received = recv(socket, buffer, sizeof(buffer), 0);
        if (bytes_received > 0) 
        {
            output_file.write(buffer, bytes_received);
            cout << "Server: Received data: " << string(buffer, bytes_received) << endl;
        } 
        else if (bytes_received == 0) 
        {
            cerr << "Server: Done sending data" << endl;
            break;
        } 
        else 
        {
            cerr << "Server: Error while receiving data. Errno: " << strerror(errno) << endl;
            break;
        }
    }
    output_file.close();
    cout << "tracking server socket : " << socket << endl;
    l_server.stop();
}

int main(int argc, char* argv[]) {
    cout << "Testing if all requirements are satisfied" << endl;

    thread svrThd(start_server, "127.0.0.1", 12345, std::filesystem::current_path() / "delivery/data/bb_annotation.txt");
    usleep(1000); // Allow the server to initialize
    thread cltThd(start_client, "127.0.0.1", 12345, std::filesystem::current_path() / "delivery/data/annotation.txt");

    //allow threads to finish
    //sleep(5);

    if (svrThd.joinable()) svrThd.join();
    if (cltThd.joinable()) cltThd.join();

    cout << " Test complete." << endl;
    return 0;
}