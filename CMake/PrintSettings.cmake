message(STATUS " ")
message(STATUS "The following settings have been applied:")
message(STATUS " -> Dependencies found:")
message(STATUS "    * OpenGL:   ${OPENGL_FOUND}")
message(STATUS "    * IMGUI:    ${IMGUI_FOUND}")
message(STATUS "    * Irrlicht: ${IRRLICHT_FOUND}")
message(STATUS " ")
message(STATUS " -> Options set:")
message(STATUS "    * Build static lib:             ${IRRIMGUI_STATIC_LIBRARY}")
message(STATUS "    * Install media files:          ${IRRIMGUI_INSTALL_MEDIA_FILES}")
message(STATUS "    * Build examples:               ${IRRIMGUI_BUILD_EXAMPLES}")
message(STATUS "    * Direct Irrlicht Includes:     ${IRRIMGUI_IRRLICHT_DIRECT_INCLUDES}")
message(STATUS "    * Use native OpenGL function:   ${IRRIMGUI_NATIVE_OPENGL}")
message(STATUS "    * Fast OpenGL texture creation: ${IRRIMGUI_FAST_OPENGL_TEXTURE_CREATION}")
message(STATUS " ")
message(STATUS " -> Compiler settings:")
message(STATUS "    * GCC like compiler:            ${GCC_LIKE_COMPILER}")
message(STATUS "    * MSVC like compiler:           ${MSVC_LIKE_COMPILER}")
message(STATUS "    * C++ Compiler flags:           ${CMAKE_CXX_FLAGS}")
message(STATUS "    * C++ Compiler flags (release): ${CMAKE_CXX_FLAGS_RELEASE}")
message(STATUS "    * C++ Compiler flags (debug):   ${CMAKE_CXX_FLAGS_DEBUG}")
message(STATUS "    * C Compiler flags:             ${CMAKE_C_FLAGS}")
message(STATUS "    * C Compiler flags (release):   ${CMAKE_C_FLAGS_RELEASE}")
message(STATUS "    * C Compiler flags (debug):     ${CMAKE_C_FLAGS_DEBUG}")
message(STATUS "    * Linker flags (executable):    ${CMAKE_EXE_LINKER_FLAGS}")
message(STATUS "    * Linker flags (module):        ${CMAKE_MODULE_LINKER_FLAGS}")
message(STATUS "    * Linker flags (static lib):    ${CMAKE_STATIC_LINKER_FLAGS}")
message(STATUS "    * Linker flags (shared lib):    ${CMAKE_SHARED_LINKER_FLAGS}")

GET_DIRECTORY_PROPERTY( DirDefines DIRECTORY ${CMAKE_SOURCE_DIR} COMPILE_DEFINITIONS )
foreach( SingleDefine ${DirDefines} )
    message(STATUS "    * Use define: " ${SingleDefine} )
endforeach()

message(STATUS " ")
message(STATUS " -> Install Path: ${CMAKE_INSTALL_PREFIX}")
message(STATUS " ")



