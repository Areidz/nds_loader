find_path(IDASDK_FOLDER include/ida.hpp HINTS $ENV{HOME}/ida-6.7/sdk $ENV{HOME}/ida-6.8/sdk $ENV{HOME}/ida-6.9/sdk $ENV{HOME}/ida/sdk $ENV{HOME}/IDA/sdk /opt/IDA/sdk NO_DEFAULT_PATH)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(IDASDK DEFAULT_MSG IDASDK_FOLDER)

if (IDASDK_FOUND)
	set(IDASDK_INCLUDEDIRECTORIES ${IDASDK_FOLDER}/include ${IDASDK_FOLDER}/ldr)
	set(IDASDK_LIBRARIES ${IDASDK_FOLDER}/bin/libida.so)
	set(IDASDK_DEFINITIONS -D__LINUX__=1)
endif ()

mark_as_advanced(IDASDK_INCLUDEDIRECTORIES IDASDK_DEFINITIONS)
