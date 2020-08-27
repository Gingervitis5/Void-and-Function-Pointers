cmake_minimum_required(VERSION 3.12)
project(Lab14 C)

set(CMAKE_C_STANDARD 11)

include_directories(genericArray)
include_directories(stock)
include_directories(utils)

add_executable(Lab14
        genericArray/genericArray.h
        stock/stock.h
        utils/fileUtils.c
        utils/fileUtils.h
        utils/utils.c
        utils/utils.h
        cscd240Lab14.c
        genericArray/genericArray.c
        stock/stock.c)
