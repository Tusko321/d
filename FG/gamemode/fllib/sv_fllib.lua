// Code by biggie cheese

flLib = {};

local function CheckFile(name)
	if (!file.Exists(name, "DATA")) then
		file.Write(name, "");
	end
end

function flLib:Append(name, guid, value) CheckFile(name);
	local contents = util.JSONToTable(file.Read(name, "DATA"));
	
	contents[guid] = value;
	
	file.Write(name, util.TableToJSON(contents, true));
end

function flLib:Gather(name) CheckFile(name);
	local contents = util.JSONToTable(file.Read(name, "DATA"));

	return contents;
end

function flLib:CurrencyByID(guid)
	return flLib:Gather()[guid];
end
