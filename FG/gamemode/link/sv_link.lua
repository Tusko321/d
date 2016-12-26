util.AddNetworkString("bcChat");

function bcChat(...)
	net.Start("bcChat");
	net.WriteTable({...});
	net.Broadcast();
end

function bcPrint(str)
	for k,v in next, player.GetAll() do
		v:PrintMessage(HUD_PRINTCONSOLE, str);
	end
end
