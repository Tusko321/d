local Roles = {};

function CreateRole(name, tdat)
	tdat.index = #Roles + 1;
	tdat.joinFunction = tdat.joinFunction || function() return true; end
	team.SetUp(tdat.index, name, tdat.joinFunction(), tdat.color);
	Roles[name] = tdat;
end

local function GetAllPlayersInRole(name)
	local amount = {};
	for k,v in next, player.GetAll() do
		if (team.GetName(v:Team()) == name) then
			amount[#amount + 1] = v;
		end
	end
end

function PlayerJoinRole(ply, name)
	if (#GetAllPlayersInRole(name) <= Roles[name].max && Roles[name].joinFunction(ply)) then
		ply:SetTeam(Roles[name].index);
	end
end
	
function ForceJoinRole(ply, name)
	ply:SetTeam(Roles[name].index);
end

/*
CreateRole("Citizen", {
	color = Color(0, 234, 0),
	joinFunction = function(ply) return true end
})
*/
