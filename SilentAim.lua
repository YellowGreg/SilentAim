--// Setting \\--
local range = 35
 
--// Variable \\--
local player = game:GetService("Players").LocalPlayer
 
--// Script \\--
game:GetService("RunService").RenderStepped:Connect(function()
    local p = game.Players:GetPlayers()
    for i = 2, #p do local v = p[i].Character
      if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and player:DistanceFromCharacter(v.HumanoidRootPart.Position) <= range then
        local WTFisthis = player.Character and player.Character:FindFirstChildOfClass("Tool")
        if WTFisthis and WTFisthis:FindFirstChild("Handle") then
          WTFisthis:Activate()
          for i,v in next, v:GetChildren() do
            if v:IsA("BasePart") then
              firetouchinterest(WTFisthis.Handle,v,0)
              firetouchinterest(WTFisthis.Handle,v,1)
            end
          end
        end
      end
    end
  end)
