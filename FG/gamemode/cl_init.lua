include("shared.lua")

include("spawn_in/cl_spawn_in.lua")

include "link/cl_link.lua"

GM.Config = GM.Config or {}

function GM:ContextMenuOpen()
    return false
end
