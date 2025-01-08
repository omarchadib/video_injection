cmake_minimum_required(VERSION 3.16)

find_package(OpenCV)

include_directories(
  inc
  ../../3_Implementations/include
  ../../5_External/include
)
set(CMAKE_INSTALL_RPATH "${CMAKE_SOURCE_DIR}/5_External/Help/lib/Linux/")

link_directories(
  ../5_External/include/${CMAKE_SYSTEM_NAME}
  ${CMAKE_SOURCE_DIR}/5_External/Help/lib/Linux/)

file(GLOB IMPLEMENTATIONS_SRC ../../3_Implementations/src/*.cpp)

# if( EXISTS ${OpenCV_DIR} )
#   add_executable(
#     internshipProg
#     src/prog2.cpp
#   )
#   target_link_libraries(
#     internshipProg
#     ${OpenCV_LIBS}
#   )
# else()
  add_executable(
    internshipProg
    src/prog1.cpp
    ${IMPLEMENTATIONS_SRC}
  )

  target_link_libraries(
    internshipProg
    AnnotationReader  
    ${OpenCV_LIBS}      
  )
# endif()

install(TARGETS internshipProg DESTINATION $ENV{PWD}/delivery/bin)

