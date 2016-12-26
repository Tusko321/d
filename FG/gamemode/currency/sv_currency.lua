// code by biggie cheese

include "fllib/sv_fllib.lua"

// Localized so no one can tamper with it
local Currency = {};

hook.Add("PlayerInitialSpawn", "currency", function(ply)
	Currency[ply:SteamID()] = 0;
	ply:SetNWInt("currency", 0);
	flLib:Append("currency.txt", ply:SteamID(), 0);		
end);

hook.Add("PlayerDisconnected", "currency", function(ply)
	Currency[ply:SteamID()] = nil;
end);

local meta = FindMetaTable("Player");
function meta:GetCurrency()
	return Currency[self:SteamID()];	
end
function meta:SetCurrency(amount)
	Currency[self:SteamID()] = amount;	
	ply:SetNWInt("currency", amount);
	flLib:Append("currency.txt", ply:SteamID(), amount);
end

// I'd like to make a detection system for this
// But other players can tamper with different players' netvars
timer.Create("currency_reset_tampering", 5, 0, function()
	for k,v in next, player.GetAll() do 
		if (v:GetNWInt("currency") != Currency[v:SteamID()]) then
			// Detected tampering of currency		
		end
		v:SetNWInt("currency", Currency[v:SteamID()]);
	end
end)
