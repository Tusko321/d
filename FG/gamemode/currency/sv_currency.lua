local Currency = {};

hook.Add("PlayerInitialSpawn", "currency", function(ply)
	Currency[ply:SteamID()] = 0;
end);

local meta = FindMetaTable("Player");
function meta:GetCurrency()
	return Currency[self:SteamID()];	
end
