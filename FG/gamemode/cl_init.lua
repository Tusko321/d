include("shared.lua")

include "spawn_in/cl_spawn_in.lua"

include "link/cl_link.lua"

include "hud/cl_hud.lua"

GM.Config = GM.Config or {}

function GM:ContextMenuOpen()
    return false
end
