cmake_minimum_required(VERSION 3.23)

# Regular expression that matches a define preprocessor.
# set(VERSION_REGEX "#define EXAMPLELIB_VERSION[ \t]+\"(.+)\"")

# Read the sourcefile that contains the version info.
# file(STRINGS "${CMAKE_CURRENT_SOURCE_DIR}/include/exampleLib/exampleLib.hpp"
#     VERSION_STR REGEX ${VERSION_REGEX}
# )

# Replace the captured version.
# string(REGEX REPLACE ${VERSION_REGEX} "\\1" VERSION_STR "${VERSION_STR}")

# project(zig-cmake-quickstart VERSION ${VERSION_STR}
#     DESCRIPTION "Zig + CMake template"
#     LANGUAGES CXX
# )
project(zig-cmake-quickstart)

# Find packages here.
# find_package(Git QUIET)

# if(GIT_FOUND AND EXISTS "${PROJECT_SOURCE_DIR}/.git")
#     option(GIT_SUBMODULE "Checkout submodules during build" ON)

#     if(GIT_SUBMODULE)
#         message(STATUS "Updating submodules")
#         execute_process(COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive
#             WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
#             RESULT_VARIABLE GIT_SUBMODULE_RESULT)

#         if(NOT GIT_SUBMODULE_RESULT EQUAL "0")
#             message(FATAL_ERROR "git submodule update --init --recursive failed with ${GIT_SUBMODULE_RESULT}")
#         endif()
#     endif()
# endif()

# Enable IDE folder support.
# set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# Export compile commands.
# set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/bin")

# Default build type if not specified.
# set(default_build_type "Debug")

# if(CMAKE_CONFIGURATION_TYPES)
#     message(STATUS "Multi-config enabled, CMAKE_CONFIGURATION_TYPES=${CMAKE_CONFIGURATION_TYPES}")
# elseif(CMAKE_BUILD_TYPE)
#     message(STATUS "Build type was specified as CMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}")
# else()
#     message(STATUS "Setting build type to \"${default_build_type}\" as none was specified.")
#     set(CMAKE_BUILD_TYPE "${default_build_type}" CACHE
#         STRING "Choose the build type." FORCE)
#     set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
#         "Debug" "Release" "MinSizeRel" "RelWithDebInfo")
# endif()

# Testing
# if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
#     include(CTest)
#     include(doctest)
# endif()

# add_library(exampleLib STATIC src/exampleLib.cpp
#     include/exampleLib/exampleLib.hpp)
# target_include_directories(exampleLib PUBLIC include)
# target_link_libraries(exampleLib PRIVATE doctest::doctest)
# target_compile_features(exampleLib PUBLIC cxx_std_23)

# set_property(TARGET libName PROPERTY FOLDER "libName")
add_executable(cli)
target_sources(cli PRIVATE apps/cli.cpp)
target_compile_features(cli PUBLIC cxx_std_23)
# target_link_libraries(cli PRIVATE libName fmt::fmt-header-only)

# if(BUILD_TESTING)
#     add_executable(doctest tests/test.cpp)
#     target_compile_features(doctest PUBLIC cxx_std_20)
#     target_link_libraries(doctest PRIVATE
#         libName
#         doctest::doctest
#         fmt::fmt-header-only)
#     doctest_discover_tests(doctest)

#     # add_test(NAME test COMMAND $<TARGET_FILE:doctest>)
# endif()


# target_include_directories(${PROJECT_NAME}
# PUBLIC
# $<INSTALL_INTERFACE:include>
# $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
# $<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}>
# )

# set_target_properties(${PROJECT_NAME} PROPERTIES
# VERSION ${PROJECT_VERSION}
# SOVERSION ${PROJECT_VERSION})

