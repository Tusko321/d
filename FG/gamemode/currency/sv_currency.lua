// code by biggie cheese

local Currency = {};

hook.Add("PlayerInitialSpawn", "currency", function(ply)
	Currency[ply:SteamID()] = 0;
	ply:SetNWInt("currency", 0);
end);

local meta = FindMetaTable("Player");
function meta:GetCurrency()
	return Currency[self:SteamID()];	
end
function meta:SetCurrency(amount)
	Currency[self:SteamID()] = amount;	
	ply:SetNWInt("currency", amount);
end
