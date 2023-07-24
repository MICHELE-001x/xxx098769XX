repeat task.wait() until game:FindFirstChild("Workspace")
repeat task.wait() until game:FindFirstChild("Players")
repeat task.wait() until game:FindFirstChild("StarterGui")
repeat task.wait() until game:FindFirstChild("CoreGui")
repeat task.wait() until game:FindFirstChild("ReplicatedFirst")
repeat task.wait() until game:FindFirstChild("Lighting")
repeat task.wait() until game:FindFirstChild("ReplicatedStorage")
wait(3)
spawn(function()
repeat task.wait() until game:FindFirstChild("Workspace")
repeat task.wait() until game:FindFirstChild("Players")
repeat task.wait() until game:FindFirstChild("StarterGui")
repeat task.wait() until game:FindFirstChild("CoreGui")
repeat task.wait() until game:FindFirstChild("ReplicatedFirst")
repeat task.wait() until game:FindFirstChild("Lighting")
repeat task.wait() until game:FindFirstChild("ReplicatedStorage")
wait(1)
    game.StarterGui:SetCore(
        "ChatMakeSystemMessage",
        {
            Text = "[ANTI AFK] Method #2 Started !",
            Font = Enum.Font.SourceSansBold, 
            FontSize = Enum.FontSize.Size24 
        }
    )
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end
end)

_G.Ai_Enled = true
if _G.Ai_Enled then
    game.StarterGui:SetCore(
        "ChatMakeSystemMessage",
        {
            Text = "[ANTI AFK] Method #1 Started !",
            Font = Enum.Font.SourceSansBold, 
            FontSize = Enum.FontSize.Size24 
        }
    )

while wait(15) do
local VirtualUser=game:service'VirtualUser'
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end


end