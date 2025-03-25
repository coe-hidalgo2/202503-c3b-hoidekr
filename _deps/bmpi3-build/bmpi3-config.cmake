
# Set up the helper functions/macros.

####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was bmpi3-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

# Set up some simple variables for using the package.
set(BMPI3_VERSION "0.79.0")
set_and_check(BMPI3_INCLUDE_DIR "${PACKAGE_PREFIX_DIR}/include")
set(BMPI3_INCLUDE_DIRS "${BMPI3_INCLUDE_DIR}")

# Find all package dependencies.
include(CMakeFindDependencyMacro)
find_dependency(MPI COMPONENTS CXX)
find_dependency(Boost COMPONENTS serialization)

# Include the file listing all the imported targets and options.
include("${CMAKE_CURRENT_LIST_DIR}/bmpi3-config-targets.cmake")

# Print a standard information message about the package being found.
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(bmpi3
  REQUIRED_VARS CMAKE_CURRENT_LIST_FILE
  VERSION_VAR BMPI3_VERSION)
