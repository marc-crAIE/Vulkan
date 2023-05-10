include "./vendor/premake/premake_customization/solution_items.lua"
include "Dependencies.lua"

workspace "Vulkan"
	architecture "x86_64"
	startproject "Vulkan"

	configurations
	{
		"Debug",
		"Release",
		"Dist"
	}

	solution_items
	{
		".editorconfig"
	}

	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Dependencies"
	include "Vulkan/vendor/GLFW"
group ""

group "Core"
	include "Vulkan"
group ""
