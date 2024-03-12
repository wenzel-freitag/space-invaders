workspace "space-invaders"
	configurations { "Debug", "Release" }

project "SpaceInvaders"
	kind "ConsoleApp"
	language "C++"
	targetdir "bin/%{cfg.buildcfg}"

files {
	"src/**.cpp",
	"lib/**.h",
	"lib/**.hpp"
}

filter "configurations:Debug"
	defines { "DEBUG" }
	symbols "On"

filter "configurations:Release"
	defines { "NDEBUG" }
	symbols "On"

filter "system:linux"
	links {
		"SDL2",
		"SDL2main"
	}
	