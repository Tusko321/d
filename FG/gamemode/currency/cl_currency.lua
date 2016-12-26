local meta = FindMetaTable("Player");
function meta:GetCurrency()
	return self:GetNWInt("currency");
end
