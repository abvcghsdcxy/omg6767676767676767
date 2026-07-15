--!nolint CommentDirective
--!grant Hybrid

local Players = game:GetService("Players")
local workspace = game:GetService("Workspace")
local plr: Player = Players.LocalPlayer

local char = plr.Character
local hrp: BasePart = char:FindFirstChild("HumanoidRootPart")
plr.CharacterAdded:Connect(function(chr: Model)
    hrp = chr:FindFirstChild("HumanoidRootPart") :: BasePart
    char = char
end)

local gui = rbxcli_gui

pcall(function() gui.remove_tab("Hack a business") end)

local tab = gui.add_tab("Hack a business", { icon = Enum.TabIcon.Joystick })

local statsCategory = tab:add_category("Stats")

function getPlot()
    for _, plot in workspace:FindFirstChild("Plots"):GetChildren() do
        local _, r = pcall(function() return plot.PlayerInfoSign.Surface.PlayerInfoGui.Username end)
        if not r then continue end

        local usr = r.Text:sub(2)
        if plr.Name == usr then return plot end
    end

    return nil
end

local plot = getPlot()
if not plot then return end
statsCategory:add_label("Plot: \t\t\t" .. plot.Name)
rbxcli.display_notification("Found plot: " .. tostring(plot.Name), 10)

local cfg = {
    collectServers = false,
    collectServersMethod = "teleport", -- "touch", "teleport"
    collectServersDelay = 1,
}

local farmCategory = tab:add_category("Farm")
farmCategory:add_toggle("Auto collect servers", cfg.collectServers, function(enabled) cfg.collectServers = enabled end)
local methods = { "teleport", "touch" }
farmCategory:add_dropdown(
    "Auto collect servers",
    methods,
    1,
    function(id) cfg.collectServersMethod = methods[id + 1] end
)
farmCategory:add_slider(
    "delay",
    1,
    60,
    cfg.collectServersDelay,
    Enum.SliderValueType.Int,
    function(value) cfg.collectServersDelay = value end
)

while task.wait(cfg.collectServersDelay) do
    if cfg.collectServers then
        if not hrp then continue end

        for _, obj in plot:FindFirstChild("Objects"):GetChildren() do
            local isServer, touch = pcall(function() return obj.Primary.TouchInterest end)
            if not (isServer and touch) then continue end

            if cfg.collectServersMethod == "touch" then
                rbxcli.fire_touch_interest(hrp, touch.Parent, 0)
                task.wait()
                rbxcli.fire_touch_interest(hrp, touch.Parent, 1)
                print("touched")
            elseif cfg.collectServersMethod == "teleport" then
                local pos = hrp.Position
                if touch.Parent:IsA("BasePart") then
                    hrp.Position = touch.Parent.Position or pos
                    hrp.Position = pos
                end
            end
        end
    end
end
