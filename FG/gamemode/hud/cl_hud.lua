local tHealth = 100
local tArmor = 100
local plyIMGon = false

local hideHL2HUD =  {
	["CHudHealth"] = true,
	["CHudBattery"] = true,
}
hook.Add("HUDShouldDraw", "HideDefDarkHUD", function( name )
	if hideHL2HUD[ name ] then return false end
end )

local function base()
	draw.RoundedBox(2,15,ScrH() - 210 - 15,415,210,Color(241,241,241,210))
end

local function plyStats()
	draw.DrawText("Credits : ".. LocalPlayer():GetCredits(),"Trebuchet18",300,ScrH() - 210,Color(0,0,0,255),TEXT_ALIGN_LEFT)
	draw.DrawText("Role : ".. LocalPlayer():GetRole(),"Trebuchet18",300,ScrH() - 190,Color(0,0,0,255),TEXT_ALIGN_LEFT)
end

local function plyHealth()
	local Het = LocalPlayer():Health()
	tHealth = Lerp(0.02 , 100 , LocalPlayer():Health())
	draw.RoundedBox(0, 22, ScrH() - 125 + 5, 450 - 50, 50, Color(0, 0, 0, 230))
	draw.RoundedBox(0, 22, ScrH() - 125 + 5, tHealth * 5 - 50 - 50, 50, Color( 255, 120, 120, 255 ))
	draw.RoundedBox(0, 22, ScrH() - 125 + 5, tHealth * 5 - 50 - 50, 5, Color(255, 150, 150, 255))
	draw.DrawText("Health : "..Het, "Trebuchet18", 25, ScrH() - 102,Color(255, 255, 255, 255), TEXT_ALIGN_LEFT)
end

local function plyIMG() -- Decided to replace with Steam Avatar
	if plyIMGon == false then
		plyIMGon = true
		local a = vgui.Create( "AvatarImage" )
		a:SetSize( 84,84 )
		a:SetPos( 25, ScrH() - 250 + 35)
		a:SetPlayer( LocalPlayer(), 84 )
	end
end

local function plyArmor()
	local Arm = LocalPlayer():Armor()
	tArmor = Lerp(0.02 , tArmor , LocalPlayer():Armor())
	draw.RoundedBox(0, 22, ScrH() - 68, 450 - 50, 50, Color(0, 0, 0, 230))
	draw.RoundedBox(0, 22, ScrH() - 68, tArmor * 5 - 50 - 50, 50, Color( 66, 134, 244, 255 ))
	draw.RoundedBox(0, 22, ScrH() - 68, tArmor * 5 - 50 - 50, 5, Color(66, 164, 255, 255))
	draw.DrawText("Armor : "..Arm, "Trebuchet18", 25, ScrH() - 47,Color(255, 255, 255, 255), TEXT_ALIGN_LEFT)
end

function startHUD()
	base()
	plyHealth()
	plyArmor()
	plyStats()
	plyIMG()
end
hook.Add("HUDPaint", "HUD>PAINT", startHUD)
