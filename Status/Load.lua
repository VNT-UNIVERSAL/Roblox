    if isfile('TLBlacklist') then
        local v = readfile('TLBlacklist')
        if v == 'Blacklist' then
            game.Players.LocalPlayer:Kick('You Have Blacklist')
            while true do
                print('Your Have Blacklist '..math.random(0,1000000))
            end
            return 'You Have Blacklist' 
        end
    end
if game.PlaceId == 142823291 then
   loadstring(game:HttpGet('https://raw.githubusercontent.com/VNT-UNIVERSAL/Roblox/main/Game/mm2.lua'))()
   elseif game.PlaceId == 15148803832 then
    if VNTScript == 'Misc' then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/VNT-UNIVERSAL/Roblox/main/Game/cdvnmisc.lua'))()
    else
      loadstring(game:HttpGet('https://raw.githubusercontent.com/VNT-UNIVERSAL/Roblox/main/Game/cdvn.lua'))()
    end
       local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
        
ScreenGui.Name = "VNT"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UILock = true
ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(221, 204, 204)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id="
ImageButton.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.RightControl,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,Enum.KeyCode.RightControl,true,game)
end)
UICorner.Parent = ImageButton
      elseif game.PlaceId == 10260193230 then
  loadstring(game:HttpGet('https://raw.githubusercontent.com/VNT-UNIVERSAL/Roblox/main/Game/memesea.lua'))()
  else
    game.Players.LocalPlayer:Kick('Game Not Supported')
end
