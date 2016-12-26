local Currency = {};

hook.Add("PlayerInitialSpawn", "currency", function(ply)
	Currency[ply:SteamID()] = 0;
end);
