hook.Add("PlayerDeathSound", "Player>DeathSoundRemove", function()
	return true
end)

function ply_death(victim,inflictor,attacker)
	if(!victim:Alive()) then
		victim:EmitSound("content/death.wav", 75, 100, 1, 1, CHAN_BODY)
	end
end
hook.Add("PlayerDeath", "Player>Death", ply_death)
