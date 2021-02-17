--[[
    
    BRM5 Script v1
    
    Script made by whiteout

        -Keybinds-
    J - Mountain Teleport
    J - Garage Teleport
    L - Command Center Teleport
    M - Supplies Teleport
    G - Always Day (Client Sided Only)

]]

local lp = game.Players.LocalPlayer
local mouse = lp:GetMouse()
local tpkey1 = "j"
local tpkey2 = "k"
local tpkey3 = "l"
local tpkey4 = "m"

mouse.KeyDown:Connect(function(key)
   if key == tpkey1 then
       lp.Character:MoveTo(Vector3.new(-1892.04456, 823.450012, -4372.45947))
   end
   
   if key == tpkey2 then
       lp.Character:MoveTo(Vector3.new(-1702.04456, 823.450012, -4372.45947))
   end
   
   if key == tpkey3 then
       lp.Character:MoveTo(Vector3.new(-3511.73071, 64.1496964, 531.917114))
   end
        
   if key == tpkey4 then
       lp.Character:MoveTo(Vector3.new(-3495.46729, 61.4500008, 952.06958))
   end
end)

local Player = game:GetService("Players").LocalPlayer
local Char = Player.Character

toggled = false
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.G then
        toggled = not toggled
        game:GetService("RunService").RenderStepped:Connect(function()
            if toggled == true then
                game.Lighting.TimeOfDay = 12
                game.Lighting.Brightness = 7
            end
        end)
        print(toggled)
        repeat wait()
        until not toggled
        game.Lighting.GlobalShadows = true
    end
end)
