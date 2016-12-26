AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

AddCSLuaFile("spawn_in/cl_spawn_in.lua")
include("spawn_in/sv_spawn_in.lua")

AddCSLuaFile "link/cl_link.lua";
include "sv_link.lua";

include "death_sounds/sv_death_sounds.lua"

GM.Config = GM.Config or {}

function GM:PlayerConnect(name)
	bcChat(Color(0, 255, 255), "Colonist ", name, " has connected.");
end

function GM:PlayerInitialSpawn(ply)
	bcChat(Color(0, 255, 255), "Colonist ", name, " has spawned.");
end
