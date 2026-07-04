--!nolint CommentDirective
--!grant Hybrid

local Players = game:GetService("Players")
local plr: Player = Players.LocalPlayer

local char = plr.Character
local hrp = char:FindFirstChild("HumanoidRootPart")
plr.CharacterAdded:Connect(function(char: Model) hrp = char:FindFirstChild("HumanoidRootPart") end)

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

local moneyVal = string.gsub(plr.leaderstats.Cash.Value, "\u{200B}", "")
local cashLbl = statsCategory:add_label("Money:   \t\t\t" .. tostring(moneyVal))
rbxcli.display_notification("Found tycoon: " .. tostring(tycoon.Name), 10)

task.spawn(function()
    while task.wait(5) do
        pcall(function()
            local moneyVal = string.gsub(plr.leaderstats.Cash.Value, "\u{200B}", "")
            cashLbl:set_text("Money:   \t\t\t" .. tostring(moneyVal))
        end)
    end
end)

local cfg = {
    isRunning = false,
    button_buy_method = "teleport", -- "teleport", "touch_interest",
    collect_cashdrops = true,
}

local farmCategory = tab:add_category("Farm")
local tg = farmCategory:add_toggle("Auto buy buttons", cfg.isRunning, function(enabled) cfg.isRunning = enabled end)
farmCategory:add_toggle(
    "Auto collect cash bags",
    cfg.collect_cashdrops,
    function(enabled) cfg.collect_cashdrops = enabled end
)

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
        permUpgrades:SetAttribute("UpgradeStack", 5)
        permUpgrades:SetAttribute("WalkSpeed", 5)
    end
end)

while task.wait(1) do
    if cfg.isRunning then
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
    if cfg.collect_cashdrops then
        local drops = game.Workspace:FindFirstChild("CashDrops")
        if not (drops and hrp) then continue end

        for _, v in drops:GetChildren() do
            if v:IsA("Part") then v.Position = hrp.Position end
        end
    end
end
