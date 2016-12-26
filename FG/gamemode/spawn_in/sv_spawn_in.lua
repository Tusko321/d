util.AddNetworkString("open_World")
util.AddNetworkString("grace_Period")

function enter_world()
	net.Start("open_World")
	net.Broadcast()
end
hook.Add("PlayerInitialSpawn", "Open>plyWorld", enter_world)

hook.Add("PlayerSpawn", "Player>Grace", function(ply)
	ply:GodEnable()
	timer.Simple(5, 1, function()
		ply:GodDisable()
	end)
end)

