local gui = rbxcli_gui
pcall(function()
	gui.remove_tab("Rivals")
end)

local tables = { ShootCooldown = {}, ShootSpread = {}, ShootRecoil = {} }

print("starting")
for _, v in gc.getgc("table") do
	local val = v.Value
	if v.Value:ContainsKey("ShootCooldown") then
		table.insert(tables.ShootCooldown, { tbl = v.Value, original = v.Value.ShootCooldown })
	end
	if v.Value:ContainsKey("ShootSpread") then
		table.insert(tables.ShootSpread, { tbl = v.Value, original = v.Value.ShootSpread })
	end
	if v.Value:ContainsKey("ShootRecoil") then
		table.insert(tables.ShootRecoil, { tbl = v.Value, original = v.Value.ShootRecoil })
	end
end

local tab = gui.add_tab("Rivals", { icon = Enum.TabIcon.Code })
local cat = tab:add_category("Gun mods")

cat:add_slider("Shoot Cooldown", 0, 500, 100, Enum.SliderValueType.Int, function(n)
	for _, sc in pairs(tables.ShootCooldown) do
		sc.tbl.ShootCooldown = (sc.original * (n / 100))
	end
end)

cat:add_slider("Shoot Spread", 0, 500, 100, Enum.SliderValueType.Int, function(n)
	for _, sc in pairs(tables.ShootSpread) do
		sc.tbl.ShootSpread = (sc.original * (n / 100))
	end
end)

cat:add_slider("Shoot Recoil", 0, 500, 100, Enum.SliderValueType.Int, function(n)
	for _, sc in pairs(tables.ShootRecoil) do
		sc.tbl.ShootRecoil = (sc.original * (n / 100))
	end
end)
