
# Ensure C++11 compatibility
if(NOT MSVC)
	include(CheckCXXCompilerFlag)
	CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
	CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
	if(COMPILER_SUPPORTS_CXX11)
		set(CMAKE_CXX_FLAGS " -std=c++11 -std=c++11")
	elseif(COMPILER_SUPPORTS_CXX0X)
		set(CMAKE_CXX_FLAGS " -std=c++11 -std=c++0x")
	else()
		message(FATAL_ERROR "The compiler /usr/bin/c++ has no C++11 support. Please use a different C++ compiler.")
	endif()
endif(NOT MSVC)

if (WIN32)
	set(CMAKE_CXX_FLAGS " -std=c++11 -static")
endif (WIN32)

FIND_LIBRARY(DLP_SDK_LIBRARY DLP_SDK
    PATHS /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/lib
    NO_DEFAULT_PATH
)

option(DLP_LINK_HIDAPI_STATIC "Link the HIDAPI library statically into the DLP_SDK library..." ON)

if(NOT DLP_LINK_HIDAPI_STATIC)
	FIND_LIBRARY(HIDAPI_LIBRARY hidapi
		PATHS /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/lib
		NO_DEFAULT_PATH
	)
	list(APPEND DLP_SDK_LIBRARIES  )
endif(NOT DLP_LINK_HIDAPI_STATIC)

FIND_LIBRARY(GLFW_LIBRARY glfw3
    PATHS /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/lib
    NO_DEFAULT_PATH
)


find_package( OpenCV REQUIRED core highgui features2d calib3d flann imgproc)

# Option to include the point grey camera module
option(DLP_BUILD_PG_FLYCAP2_C_CAMERA_MODULE "Include the TI developed Point Grey Research camera module..." OFF)
if(DLP_BUILD_PG_FLYCAP2_C_CAMERA_MODULE)
	
	if (WIN32)    
	
		find_library(	PG_FLYCAP_LIB 			FlyCapture2 				"/lib")
		find_library(	PG_FLYCAP_LIB_C 		FlyCapture2_C 				"/lib/C")
		get_filename_component(PG_FLYCAP_LIB_DIR "" 	DIRECTORY)
		get_filename_component(PG_FLYCAP_DIR     "" DIRECTORY)

		find_path(		PG_FLYCAP_BIN_DIR 	    FlyCapture2.dll 			"/bin")
		find_path(		PG_FLYCAP_INCLUDE_DIR 	C/FlyCapture2_C.h 			"/include")
		
	endif (WIN32)


	if (UNIX)
		if(NOT APPLE)
			find_path(		PG_FLYCAP_INCLUDE_DIR 	FlyCapture2.h 		"/usr/include/flycapture")		
			find_library(	PG_FLYCAP_LIB 			flycapture  		"/usr/lib/")
			find_library(	PG_FLYCAP_LIB_C			flycapture-c		"/usr/lib/")
						
	#		list(APPEND LIBS flycapture 	"")
	#		list(APPEND LIBS flycapture-c 	"")			
		endif(NOT APPLE)
	endif (UNIX)

	if (APPLE)
		message( FATAL_ERROR "The Point Grey camera module is NOT available for Mac. Exiting..." )
	endif (APPLE)
	
	# Add Point Grey FlyCapture2 as library to link with DLP SDK
	list(APPEND	INCLUDE_DIRS 	)
	list(APPEND DLP_SDK_LIBRARIES 	)
	list(APPEND DLP_SDK_LIBRARIES	)	
endif(DLP_BUILD_PG_FLYCAP2_C_CAMERA_MODULE)

#list(APPEND DLP_SDK_LIBRARIES    opencv_core;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_flann;opencv_imgproc;/usr/lib/aarch64-linux-gnu/libX11.so;-lpthread;/usr/lib/aarch64-linux-gnu/libXrandr.so;/usr/lib/aarch64-linux-gnu/libXi.so;/usr/lib/aarch64-linux-gnu/libXxf86vm.so;/usr/lib/aarch64-linux-gnu/librt.so;/usr/lib/aarch64-linux-gnu/libm.so;/usr/lib/aarch64-linux-gnu/libGL.so;usb-1.0;/usr/lib/aarch64-linux-gnu/libusb-1.0.so;udev;/usr/lib/aarch64-linux-gnu/libudev.so)
list(APPEND DLP_SDK_LIBRARIES   opencv_core;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_flann;opencv_imgproc;/usr/lib/aarch64-linux-gnu/libX11.so;-lpthread;/usr/lib/aarch64-linux-gnu/libXrandr.so;/usr/lib/aarch64-linux-gnu/libXi.so;/usr/lib/aarch64-linux-gnu/libXxf86vm.so;/usr/lib/aarch64-linux-gnu/librt.so;/usr/lib/aarch64-linux-gnu/libm.so;/usr/lib/aarch64-linux-gnu/libGL.so;usb-1.0;/usr/lib/aarch64-linux-gnu/libusb-1.0.so;udev;/usr/lib/aarch64-linux-gnu/libudev.so)
list(APPEND DLP_SDK_INCLUDE_DIRS /usr/include/opencv4;/usr/include/opencv4/opencv2;/usr/include/opencv4/opencv2;3rd_party/glfw-3.0.4/include;/home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/3rd_party/hidapi-master/hidapi;/home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/include)
list(APPEND DLP_SDK_DEFINITIONS )


if(NOT DEFINED CMAKE_RUNTIME_OUTPUT_DIRECTORY) 
	set(CMAKE_RUNTIME_OUTPUT_DIRECTORY /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build)
endif(NOT DEFINED CMAKE_RUNTIME_OUTPUT_DIRECTORY) 

# Copy the required dll's if on windows
if (WIN32)
	# Copy OpenCV dll's
	file(COPY /usr/lib/aarch64-linux-gnu/cmake/opencv4/bin/libopencv_calib3d454.dll 		DESTINATION /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/bin)
	file(COPY /usr/lib/aarch64-linux-gnu/cmake/opencv4/bin/libopencv_core454.dll 		DESTINATION /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/bin)
	file(COPY /usr/lib/aarch64-linux-gnu/cmake/opencv4/bin/libopencv_features2d454.dll 	DESTINATION /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/bin)
	file(COPY /usr/lib/aarch64-linux-gnu/cmake/opencv4/bin/libopencv_flann454.dll 		DESTINATION /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/bin)
	file(COPY /usr/lib/aarch64-linux-gnu/cmake/opencv4/bin/libopencv_highgui454.dll 		DESTINATION /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/bin)
	file(COPY /usr/lib/aarch64-linux-gnu/cmake/opencv4/bin/libopencv_imgproc454.dll 		DESTINATION /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/bin)
	
	# If Point Grey Module enabled copy the dll's
	if(DLP_BUILD_PG_FLYCAP2_C_CAMERA_MODULE)
        file(COPY /FlyCapture2.dll      DESTINATION /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/bin)
        file(COPY /FlyCapture2_C.dll    DESTINATION /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/bin)
        file(COPY /libiomp5md.dll       DESTINATION /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/bin)
	endif(DLP_BUILD_PG_FLYCAP2_C_CAMERA_MODULE)	
endif (WIN32)


file(COPY /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/bin/resources DESTINATION /home/issacs/texasinstruments/DLP-ALC-LIGHTCRAFTER-SDK-for-Ubuntu/build/bin)

include_directories()
add_definitions()
