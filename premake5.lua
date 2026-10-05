-------------------
---- WOKRSPACE ----
-------------------

workspace("LInit")
configurations({ "Debug", "Release" })
platforms({ "x64", "arm64" })

filter("configurations:Debug")
symbols("On")
defines({ "DEBUG" })

filter("configurations:Release")
optimize("On")
defines({ "RELEASE" })

-----------------
---- PROJECT ----
-----------------

local src = "src"
local include = "include"
local outputdir = "build/%{cfg.buildcfg}/%{cfg.system}/%{cfg.architecture}"

project("linit")
kind("ConsoleApp")
language("C++")
cppdialect("C++20")

targetname("linit")
targetdir(outputdir .. "/bin")
objdir(outputdir .. "/obj")

files({
	src .. "/**.cc",
	src .. "/**.h",
})

includedirs({
	include,
})
