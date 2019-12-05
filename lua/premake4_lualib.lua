-- Common setup for lua shared libs

configuration "Debug"
    targetdir "../bin/Debug/scripts/libs"
configuration "Release"
    targetdir "../bin/Release/scripts/libs"
configuration {}


-- lua
sysincludedirs { DEPS.lua.include }
defines { "LUA_LIB" }
libdirs { DEPS.lua.lib }
links { "lua51" }

configuration "windows"
    defines {
        "_USRDLL", "LUA_BUILD_AS_DLL",
    }
    links { "winmm" }

configuration "linux"
    defines { "LUA_USE_LINUX" }
    links { "dl" }

configuration "Debug"
    defines { "LUA_USE_APICHECK" }

configuration {}
