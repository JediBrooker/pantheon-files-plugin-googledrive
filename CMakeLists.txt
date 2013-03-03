# Check http://elementaryos.org/docs/developer-guide/cmake for documentation

cmake_minimum_required (VERSION 2.8)
cmake_policy(VERSION 2.8)

project(Marlin-GoogleDrive)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)

# Vala stuff
#find_package(Vala REQUIRED)
#include(ValaVersion)
#ensure_vala_version("0.12.0" MINIMUM)
#include(ValaPrecompile)
#vala_precompile(VALA_C
#    plugin.vala
#PACKAGES
#    gtk+-3.0
#    marlincore
#OPTIONS
#    --thread
#)

# C stuff
find_package(PkgConfig)
pkg_check_modules(DEPS REQUIRED
    gtk+-3.0
    marlincore
)
set(CFLAGS
    ${DEPS_CFLAGS} ${DEPS_CFLAGS_OTHER}
)
set(LIB_PATHS
    ${DEPS_LIBRARY_DIRS}
)
include_directories(${CMAKE_SOURCE_DIR})
link_directories(${LIB_PATHS})
add_definitions(${CFLAGS})

add_library(marlin-googledrive SHARED
	plugin.c)
target_link_libraries(marlin-googledrive marlincore ${DEPS_LIBRARIES})

install(FILES googledrive.plug DESTINATION lib/pantheon-files/plugins/)
install(TARGETS marlin-googledrive DESTINATION lib/pantheon-files/plugins/)