#!/bin/bash

function cmake_gen() {
	OUTPATH=$1;
	TEMP='''
cmake_minimum_required(VERSION 3.29.3)

## VARIABLES

# set(PROJ_VERSION "1.0.0")
set(PROJ_NAME "MYPROGRAM")
set(COMPILER "/usr/bin/gcc")
set(PROJ_FLAGS "-m64 -g -Wall -Werror -Wextra")
set(SRC_DIR "./src")
# set(LIB_NAMES)

# PROJECT

project(${PROJ_NAME} LANGUAGES C)

## CONFIG

set(CMAKE_C_STANDARD 23)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_COMPILER ${COMPILER})
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${PROJ_FLAGS}")

# include(CPack)

## BIN

# add_subdirectory(${SRC_DIR})
add_executable(${PROJ_NAME} ${SRC_DIR}/MYSOURCE.c ${SRC_DIR}/set.h)

# set_target_properties(${PROJ_NAME} PROPERTIES INSTALL_RPATH ${CMAKE_INSTALL_PREFIX}/lib)
# target_link_libraries(${PROJ_NAME} PRIVATE ${LIB_NAMES})

install(TARGETS ${PROJ_NAME} DESTINATION bin)
# install(TARGETS ${LIB_NAMES} DESTINATION lib)
'''
	echo "$TEMP" > $OUTPATH/CMakeLists.txt;
}
