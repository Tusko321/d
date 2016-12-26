function openWorld()
	local f = vgui.Create("DFrame")
	f:SetSize(ScrW(), ScrH())
	f:Center()
	f:SetVisible( true )
	f:ShowCloseButton( false )
	f:SetDraggable( false )
	f:MakePopup()
	f:SetTitle("")
	f.Paint = function(s,w,h)
		draw.RoundedBox(0,0,0,w,h,Color(241,241,241,255))
	end

	local b = vgui.Create("DButton", f)
	b:SetSize( 230,75)
	b:SetPos(ScrW()/2 - (230 / 2),ScrH()/3 - (75 / 2))
	b:SetText("Spawn In")
	b.DoClick = function()
		f:Close()
	end
end
net.Receive("open_World", openWorld)