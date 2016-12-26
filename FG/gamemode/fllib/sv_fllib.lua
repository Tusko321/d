// Code by biggie cheese

flLib = {};

local function CheckFile()
	if (!file.Exists("currency.txt", "DATA")) then
		file.Write("currency.txt", "");
	end
end

function flLib:Append(guid, amount) CheckFile();
	local contents = util.JSONToTable(file.Read("currency.txt", "DATA"));
	
	contents[guid] = amount;
	
	file.Write("currency.txt", util.TableToJSON(contents, true));
end

function flLib:Gather() CheckFile();
	local contents = util.JSONToTable(file.Read("currency.txt", "DATA"));

	return contents;
end
