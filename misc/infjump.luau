--!grant Memory

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local plr: Player = Players.LocalPlayer

local resp = HttpService:RequestAsync({
    Method = "GET",
    Url = "https://offsets.imtheo.lol/Offsets.json",
})
if resp.StatusCode ~= 200 then return end
local Offsets = HttpService:JSONDecode(resp.Body).Offsets

local char, hrp, hum: Humanoid
function newChar(chr)
    char = chr
    hrp = chr:FindFirstChild("HumanoidRootPart")
    hum = char:FindFirstChild("Humanoid")
end
newChar(plr.Character)
plr.CharacterAdded:Connect(newChar)

--
game:GetService("UserInputService").InputBegan:Connect(function(e)
    if e.KeyCode ~= Enum.KeyCode.Space then return end

    local _, humState = memory.read_pointer(hum.Address + Offsets.Humanoid.HumanoidState)
    if not humState then return end

    memory.writei32(humState + Offsets.Humanoid.HumanoidStateID, 3)
    local vel = hrp.Velocity
    hrp.Velocity = Vector3.new(vel.X, hum.JumpPower, vel.Z)
end)
