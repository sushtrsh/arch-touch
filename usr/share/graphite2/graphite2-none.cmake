#----------------------------------------------------------------
# Generated CMake target import file for configuration "None".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "gr2_graphite2" for configuration "None"
set_property(TARGET gr2_graphite2 APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(gr2_graphite2 PROPERTIES
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libgraphite2.so.3.3.1"
  IMPORTED_SONAME_NONE "libgraphite2.so.3"
  )

list(APPEND _cmake_import_check_targets gr2_graphite2 )
list(APPEND _cmake_import_check_files_for_gr2_graphite2 "${_IMPORT_PREFIX}/lib/libgraphite2.so.3.3.1" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
