--!nolint CommentDirective
--!grant Hybrid
--!grant NetworkExploits

repeat
	task.wait(1)
until rbxcli.is_permission_granted("Hybrid")

local gui = rbxcli_gui
pcall(function()
	gui.remove_tab("Rivals")
end)

local tables = { ShootCooldown = {}, ShootSpread = {}, ShootRecoil = {} }

print("starting")
for _, v in gc.getgc("table") do
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
end):set_postfix("%")

cat:add_slider("Shoot Spread", 0, 500, 100, Enum.SliderValueType.Int, function(n)
	for _, sc in pairs(tables.ShootSpread) do
		sc.tbl.ShootSpread = (sc.original * (n / 100))
	end
end):set_postfix("%")

cat:add_slider("Shoot Recoil", 0, 500, 100, Enum.SliderValueType.Int, function(n)
	for _, sc in pairs(tables.ShootRecoil) do
		sc.tbl.ShootRecoil = (sc.original * (n / 100))
	end
end):set_postfix("%")

local device_spoofer = tab:add_category("Device Spoofer")
local devices = { "MouseKeyboard", "VR", "Touch", "Gamepad" }
device_spoofer:add_dropdown("Device", { "MouseKeyboard", "VR", "Touch", "Gamepad" }, 1, function(d)
	local Remotes = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
	local Replication = Remotes and Remotes:FindFirstChild("Replication")
	local Fighter = Replication and Replication:FindFirstChild("Fighter")
	local SetControls = Fighter and Fighter:FindFirstChild("SetControls")

	rbxcli.fire_remote_event(SetControls, devices[d + 1])
end)
