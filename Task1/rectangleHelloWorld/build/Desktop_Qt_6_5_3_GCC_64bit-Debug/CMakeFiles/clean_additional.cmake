# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/apprectangleHelloWorld_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/apprectangleHelloWorld_autogen.dir/ParseCache.txt"
  "apprectangleHelloWorld_autogen"
  )
endif()
