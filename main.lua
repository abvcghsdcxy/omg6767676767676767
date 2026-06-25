--!grant Hybrid

local Players = game:GetService("Players")
local plr = Players.LocalPlayer

local gui = rbxcli_gui

pcall(function() gui.remove_tab("Sell Lemons") end)

local tab = gui.add_tab("Sell Lemons", { icon = Enum.TabIcon.Joystick })

local statsCategory = tab:add_category("Stats")

function getTycoon()
    for i = 1, 10, 1 do
        local tycoonpath = workspace:FindFirstChild("Tycoon" .. tostring(i))
        if tycoonpath then
            if tycoonpath.Owner.Value == plr then return tycoonpath end
        end
    end
    return nil
end

local tycoon = getTycoon()
if not tycoon then return end
statsCategory:add_label("Tycoon: \t\t\t" .. tycoon.Name)
local cashLbl = statsCategory:add_label("Money:   \t\t\t" .. tostring(Players.LocalPlayer.leaderstats.Cash.Value))
rbxcli.display_notification("Found tycoon: " .. tostring(tycoon.Name), 10)

task.spawn(function()
    while task.wait(5) do
        pcall(
            function() cashLbl:set_text("Money:   \t\t\t" .. tostring(Players.LocalPlayer.leaderstats.Cash.Value)) end
        )
    end
end)

local cfg = {
    isRunning = false,
    button_buy_method = "teleport", -- "teleport", "touch_interest"
}

local farmCategory = tab:add_category("Farm")
local tg = farmCategory:add_toggle("Auto buy buttons", cfg.isRunning, function(enabled) cfg.isRunning = enabled end)

farmCategory:add_keybind("Auto buy buttons", Enum.KeyCode.F1):on_activated(function(active) tg:set_boolean(active) end)
local methods = { "teleport", "touch_interest" }
farmCategory:add_dropdown("Buy button method", methods, 1, function(id)
    cfg.button_buy_method = methods[id + 1]
    print(methods[id + 1])
end)

local miscCategory = tab:add_category("Misc")
miscCategory:add_button("Max upgrades", function()
    local tycoonValues = tycoon:FindFirstChild("Values")
    local tycoonPowers = tycoonValues and tycoonValues:FindFirstChild("Powers")
    local permUpgrades = tycoonPowers and tycoonPowers:FindFirstChild("Permanent")
    if permUpgrades then
        permUpgrades:SetAttribute("BuyNext", 1)
        permUpgrades:SetAttribute("Manage", 1)
        permUpgrades:SetAttribute("UpgradeStack", 2)
        permUpgrades:SetAttribute("WalkSpeed", 2)
    end
end)

while task.wait(1) do
    if cfg.isRunning then
        local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
        print(hrp)
        if not hrp then continue end

        print(cfg.button_buy_method)

        pcall(function()
            for _, v in tycoon:GetDescendants() do
                if v:IsA("TouchTransmitter") and cfg.isRunning then
                    if cfg.button_buy_method == "teleport" then
                        rbxcli.teleport_local_player(v.Parent.Position)
                    elseif cfg.button_buy_method == "touch_interest" then
                        rbxcli.fire_touch_interest(hrp, v.Parent, 0)
                        rbxcli.fire_touch_interest(hrp, v.Parent, 1)
                    end
                end
            end
        end)
    end
end
