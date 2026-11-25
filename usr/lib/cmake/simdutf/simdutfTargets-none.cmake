#----------------------------------------------------------------
# Generated CMake target import file for configuration "None".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "simdutf::simdutf" for configuration "None"
set_property(TARGET simdutf::simdutf APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(simdutf::simdutf PROPERTIES
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libsimdutf.so.37.0.0"
  IMPORTED_SONAME_NONE "libsimdutf.so.37"
  )

list(APPEND _cmake_import_check_targets simdutf::simdutf )
list(APPEND _cmake_import_check_files_for_simdutf::simdutf "${_IMPORT_PREFIX}/lib/libsimdutf.so.37.0.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
