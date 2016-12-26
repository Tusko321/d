AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

AddCSLuaFile("spawn_in/cl_spawn_in.lua")
include("spawn_in/sv_spawn_in.lua")

AddCSLuaFile "link/cl_link.lua";
include "sv_link.lua";

GM.Config = GM.Config or {}

function GM:PlayerConnect(name)
	print("Colonist".. name.." is connecting")
end

function GM:PlayerInitialSpawn(ply)
	print("Colonist ".. ply:Name().." has spawned.")
end
