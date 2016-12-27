local CATEGORY_NAME = "Colony Commands"
function ulx.rolegive( calling_ply, target_ply )
	if target_ply:IsBot() then
		ULib.tsayError( calling_ply, "Cannot give a bot a role!", true)
	end
	local targ = target_ply

	timer.Simple( 0.5, function()
		local role = 
		local str = "#A gave #T the role "..
		 
	end )
end
