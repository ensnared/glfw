add_library("GLFW" STATIC
      "Acrylic/vendor/GLFW/include/GLFW/glfw3.h"
      "Acrylic/vendor/GLFW/include/GLFW/glfw3native.h"
    "Acrylic/vendor/GLFW/src/context.c"
    "Acrylic/vendor/GLFW/src/egl_context.c"
    "Acrylic/vendor/GLFW/src/init.c"
    "Acrylic/vendor/GLFW/src/input.c"
    "Acrylic/vendor/GLFW/src/internal.h"
    "Acrylic/vendor/GLFW/src/mappings.h"
    "Acrylic/vendor/GLFW/src/monitor.c"
    "Acrylic/vendor/GLFW/src/null_init.c"
    "Acrylic/vendor/GLFW/src/null_joystick.c"
    "Acrylic/vendor/GLFW/src/null_monitor.c"
    "Acrylic/vendor/GLFW/src/null_platform.h"
    "Acrylic/vendor/GLFW/src/null_window.c"
    "Acrylic/vendor/GLFW/src/osmesa_context.c"
    "Acrylic/vendor/GLFW/src/platform.c"
    "Acrylic/vendor/GLFW/src/platform.h"
    "Acrylic/vendor/GLFW/src/vulkan.c"
    "Acrylic/vendor/GLFW/src/wgl_context.c"
    "Acrylic/vendor/GLFW/src/win32_init.c"
    "Acrylic/vendor/GLFW/src/win32_joystick.c"
    "Acrylic/vendor/GLFW/src/win32_module.c"
    "Acrylic/vendor/GLFW/src/win32_monitor.c"
    "Acrylic/vendor/GLFW/src/win32_thread.c"
    "Acrylic/vendor/GLFW/src/win32_thread.h"
    "Acrylic/vendor/GLFW/src/win32_time.c"
    "Acrylic/vendor/GLFW/src/win32_time.h"
    "Acrylic/vendor/GLFW/src/win32_window.c"
    "Acrylic/vendor/GLFW/src/window.c"
)
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  set_target_properties("GLFW" PROPERTIES
    OUTPUT_NAME "GLFW"
    ARCHIVE_OUTPUT_DIRECTORY "C:/dev/Acrylic/Acrylic/vendor/GLFW/bin/Debug-windows-x86_64/GLFW"
    LIBRARY_OUTPUT_DIRECTORY "C:/dev/Acrylic/Acrylic/vendor/GLFW/bin/Debug-windows-x86_64/GLFW"
    RUNTIME_OUTPUT_DIRECTORY "C:/dev/Acrylic/Acrylic/vendor/GLFW/bin/Debug-windows-x86_64/GLFW"
  )
endif()
target_include_directories("GLFW" PRIVATE
)
target_compile_definitions("GLFW" PRIVATE
  $<$<CONFIG:Debug>:_GLFW_WIN32>
  $<$<CONFIG:Debug>:_CRT_SECURE_NO_WARNINGS>
)
target_link_directories("GLFW" PRIVATE
)
target_link_libraries("GLFW"
)
target_compile_options("GLFW" PRIVATE
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-g>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-w>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-g>
  $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-w>
)
if(CMAKE_BUILD_TYPE STREQUAL Release)
  set_target_properties("GLFW" PROPERTIES
    OUTPUT_NAME "GLFW"
    ARCHIVE_OUTPUT_DIRECTORY "C:/dev/Acrylic/Acrylic/vendor/GLFW/bin/Release-windows-x86_64/GLFW"
    LIBRARY_OUTPUT_DIRECTORY "C:/dev/Acrylic/Acrylic/vendor/GLFW/bin/Release-windows-x86_64/GLFW"
    RUNTIME_OUTPUT_DIRECTORY "C:/dev/Acrylic/Acrylic/vendor/GLFW/bin/Release-windows-x86_64/GLFW"
  )
endif()
target_include_directories("GLFW" PRIVATE
)
target_compile_definitions("GLFW" PRIVATE
  $<$<CONFIG:Release>:_GLFW_WIN32>
  $<$<CONFIG:Release>:_CRT_SECURE_NO_WARNINGS>
)
target_link_directories("GLFW" PRIVATE
)
target_link_libraries("GLFW"
)
target_compile_options("GLFW" PRIVATE
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-O3>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-w>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-O3>
  $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-w>
)
if(CMAKE_BUILD_TYPE STREQUAL Dist)
  set_target_properties("GLFW" PROPERTIES
    OUTPUT_NAME "GLFW"
    ARCHIVE_OUTPUT_DIRECTORY "C:/dev/Acrylic/Acrylic/vendor/GLFW/bin/Dist-windows-x86_64/GLFW"
    LIBRARY_OUTPUT_DIRECTORY "C:/dev/Acrylic/Acrylic/vendor/GLFW/bin/Dist-windows-x86_64/GLFW"
    RUNTIME_OUTPUT_DIRECTORY "C:/dev/Acrylic/Acrylic/vendor/GLFW/bin/Dist-windows-x86_64/GLFW"
  )
endif()
target_include_directories("GLFW" PRIVATE
)
target_compile_definitions("GLFW" PRIVATE
  $<$<CONFIG:Dist>:_GLFW_WIN32>
  $<$<CONFIG:Dist>:_CRT_SECURE_NO_WARNINGS>
)
target_link_directories("GLFW" PRIVATE
)
target_link_libraries("GLFW"
)
target_compile_options("GLFW" PRIVATE
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:C>>:-m64>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:C>>:-O3>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:C>>:-w>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-m64>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-O3>
  $<$<AND:$<CONFIG:Dist>,$<COMPILE_LANGUAGE:CXX>>:-w>
)