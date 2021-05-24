# Generated by Boost 1.70.0

# address-model=64

if(CMAKE_SIZEOF_VOID_P EQUAL 4)
  return()
endif()

# layout=system

# toolset=xgcc42

# link=shared

if(NOT "${Boost_USE_STATIC_LIBS}" STREQUAL "" AND Boost_USE_STATIC_LIBS)
  return()
endif()

if(NOT BUILD_SHARED_LIBS)
  return()
endif()

# runtime-link=shared

if(Boost_USE_STATIC_RUNTIME)
  return()
endif()

# runtime-debugging=off

if(Boost_USE_DEBUG_RUNTIME)
  return()
endif()

# threading=multi

# variant=release

if(NOT "${Boost_USE_RELEASE_LIBS}" STREQUAL "" AND NOT Boost_USE_RELEASE_LIBS)
  return()
endif()


set_property(TARGET Boost::fiber_numa APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Boost::fiber_numa PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE CXX
  )

set_target_properties(Boost::fiber_numa PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "BOOST_FIBER_NUMA_DYN_LINK"
  )

list(APPEND _BOOST_FIBER_NUMA_DEPS headers)
