// code by biggie cheese

net.Receive("bcChat", function()
	local vararg = net.ReadTable();
	chat.AddText(vararg);
end);
