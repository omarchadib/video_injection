cmake_minimum_required(VERSION 3.16)

enable_testing()

project(integration)

find_package(Threads)

include_directories(
  inc
  ../../3_Implementations/include
  ../../5_External/include
)

link_directories(
  lib
  lib/${CMAKE_SYSTEM_NAME}
  ../../delivery/lib/

)
file(GLOB IMPLEMENTATIONS_SRC ../../3_Implementations/src/*.cpp)


add_executable(
  testAnnotation
  src/testAnnotation.cpp
  ${IMPLEMENTATIONS_SRC}
)

add_executable(
  integrationApplication
  src/integrationApplication.cpp
)

set(LIBS internship_challenge AnnotationReader)
list(APPEND LIBS Threads::Threads)
message("BT = " ${CMAKE_BUILD_TYPE})

if(${CMAKE_BUILD_TYPE} MATCHES DEBUG)
  list(APPEND LIBS workspace_utility)
endif()

target_link_libraries(
  integrationApplication
  ${LIBS}
  
)

target_link_libraries(
  testAnnotation
  AnnotationReader
)

function(do_test testName target)
  add_test(NAME ${testName} COMMAND ${target})
  set_tests_properties(${testName} PROPERTIES FAIL_REGULAR_EXPRESSION "${testName} NOK")
endfunction()

do_test("ServerIpManagement" integrationApplication)
do_test("ServerPortManagement" integrationApplication)
do_test("ServerFileManagement" integrationApplication)
do_test("ClientIpManagement" integrationApplication)
do_test("ClientPortManagement" integrationApplication)
do_test("ClientFileManagement" integrationApplication)
do_test("AnnotationWriter" integrationApplication)
do_test("BoundingBox" integrationApplication)
do_test("AnnotationReader" integrationApplication)
