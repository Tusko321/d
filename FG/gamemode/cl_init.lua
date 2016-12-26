include("shared.lua")

include("spawn_in/cl_spawn_in.lua")

GM.Config = GM.Config or {}

function GM:ContextMenuOpen()
    return false
end
