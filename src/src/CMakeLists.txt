# Build C library


# Obtain Headers and Sources ------------------------------------------------ #

file(GLOB HEADERS ${CMAKE_CURRENT_SOURCE_DIR}/*.h ${CMAKE_CURRENT_SOURCE_DIR}/*.H)
file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/*.c)

# Build Libraries ----------------------------------------------------------- #

# --> C
add_library(modena SHARED ${SOURCES})
target_link_libraries(modena ${LTDL_LIBRARIES} ${PYTHON_LIBRARIES})

set_property(TARGET modena APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
  $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>
)

#include(GenerateExportHeader)
#generate_export_header(modena)
set_property(TARGET modena PROPERTY VERSION ${PACKAGE_VERSION})
set_property(TARGET modena PROPERTY SOVERSION 1)
set_property(TARGET modena PROPERTY INTERFACE_MODENA_MAJOR_VERSION 1)
set_property(
  TARGET modena APPEND PROPERTY
  COMPATIBLE_INTERFACE_STRING MODENA_MAJOR_VERSION
)
set_target_properties(modena PROPERTIES PUBLIC_HEADER "${HEADERS}")

# --> FORTRAN
add_library(fmodena SHARED fmodena.f90)
target_link_libraries(fmodena ${LTDL_LIBRARIES} ${PYTHON_LIBRARIES})

# Build executables
add_executable(twoTanksFullProblem twoTanksFullProblem.C)

# Build configuration files ------------------------------------------------- #
configure_file("${CMAKE_CURRENT_SOURCE_DIR}/libmodena.pc.in"
               "${CMAKE_CURRENT_BINARY_DIR}/libmodena.pc" @ONLY)

include(CMakePackageConfigHelpers)
write_basic_package_version_file(
  ${CMAKE_CURRENT_BINARY_DIR}/MODENAConfigVersion.cmake
  VERSION ${PACKAGE_VERSION}
  COMPATIBILITY AnyNewerVersion
)

#export(
# TARGETS twoTanksFullProblem modena fmodena
#  FILE ${CMAKE_CURRENT_BINARY_DIR}/MODENATargets.cmake
#  NAMESPACE MODENA::
#)

configure_file(
  cmake/MODENAConfig.cmake
  ${CMAKE_CURRENT_BINARY_DIR}/MODENAConfig.cmake
  COPYONLY
)

# Installation -------------------------------------------------------------- #
if(CMAKE_VERSION VERSION_GREATER "2.8.12")
  install(
    TARGETS twoTanksFullProblem modena fmodena
    EXPORT MODENATargets
    RUNTIME DESTINATION ${INSTALL_BIN_DIR}
    LIBRARY DESTINATION ${INSTALL_LIB_DIR}/modena
    ARCHIVE DESTINATION ${INSTALL_LIB_DIR}/static
    PUBLIC_HEADER DESTINATION ${INSTALL_INCLUDE_DIR}/modena
    INCLUDES DESTINATION ${INSTALL_INCLUDE_DIR}/modena
  )
else()
  install(
    TARGETS twoTanksFullProblem modena fmodena
    EXPORT MODENATargets
    RUNTIME DESTINATION ${INSTALL_BIN_DIR}
    LIBRARY DESTINATION ${INSTALL_LIB_DIR}/modena
    ARCHIVE DESTINATION ${INSTALL_LIB_DIR}/static
    PUBLIC_HEADER DESTINATION ${INSTALL_INCLUDE_DIR}/modena
  )
endif()

install(FILES "${CMAKE_CURRENT_BINARY_DIR}/libmodena.pc"
        DESTINATION "${INSTALL_LIB_DIR}/pkgconfig")
install(FILES "${CMAKE_CURRENT_BINARY_DIR}/fmodena.mod"
        DESTINATION "${INSTALL_INCLUDE_DIR}/modena")

install(
  EXPORT MODENATargets
  FILE MODENATargets.cmake
  NAMESPACE MODENA::
  DESTINATION ${ConfigPackageLocation}
)

install(
  FILES cmake/MODENAConfig.cmake
  ${CMAKE_CURRENT_BINARY_DIR}/MODENAConfigVersion.cmake
  DESTINATION ${ConfigPackageLocation}
)

