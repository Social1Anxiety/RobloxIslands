loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterCompat.lua"))()

local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

_G.player = game.Players.LocalPlayer
_G.char = _G.player.Character or _G.player.CharacterAdded:Wait()
_G.human = _G.char:WaitForChild("HumanoidRootPart")

local base
local basePos

local GUI = Mercury:Create{
    Name = "Sword Factory",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

local Misc = GUI:Tab{
	Name = "Misc",
	Icon = "rbxassetid://9129847603"
}

local Base = GUI:Tab{
	Name = "Base",
	Icon = "rbxassetid://7545193197"
}

local Mobs = GUI:Tab{
	Name = "Mobs",
	Icon = "http://www.roblox.com/asset/?id=58795473"
}

Misc:Button{
	Name = "Sword Reach",
	Description = "OP Longer Sword",
	Callback = function()
		 SwordReach()
	 end
}

Misc:Button{
	Name = "Name Hider",
	Description = "Keeps your name hidden from other _G.players!",
	Callback = function()
		 HideName()
	end
}

Misc:Button{
	Name = "Equip Sword",
	Description = "Equip a sword",
	Callback = function()
	    EquipSword()
	 end
}

Mobs:Button{
	Name = "Reload Mobs",
	Description = "Reloads mobs incase of error",
	Callback = function() LoadGame() end
}

Mobs:Toggle{
	Name = "Auto Kill Fast",
	StartingState = false,
	Description = "Auto kill Noobs *Fast*",
	Callback = function(func)
		FastKill(func)
	end
}

Mobs:Toggle{
	Name = "Auto Kill",
	StartingState = false,
	Description = "For non paid exploits, thanks to VertigoCool#1636",
	Callback = function(func)
        FireClickSpawn(func)
	   end
}

Base:Toggle{
	Name = "Toggle Make Swords",
	StartingState = false,
	Description = "Creates Swords 2x as fast!",
	Callback = function(func)
        FireClickSpawn(func)
	   end
}

Mobs:Toggle{
	Name = "God Mode",
	StartingState = false,
	Description = "Never Die Again!",
	Callback = function(func)
        GodMode(func)
	   end
}

function Start()
 repeat task.wait() until game:IsLoaded()
   for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
      if v.Name == _G.player.Name.. "'s" .. " Base" then
         base = v
         basePos = base.Spawn.CFrame
      end
   end
end

Start()

function LoadGame()
for i = 1,6 do task.wait(0.13)
_G.human.CFrame = CFrame.new(-25000, 150, -15000)
end

for i = 1,6 do task.wait(0.13)
_G.human.CFrame = CFrame.new(-15000, 150, -25000)
end

for i = 1,6 do task.wait(0.13)
_G.human.CFrame = CFrame.new(-25000, 150, -25000)
end

for i = 1,6 do task.wait(0.13)
_G.human.CFrame = CFrame.new(-30000, 150, -30000)
end

for i = 1,6 do task.wait(0.13)
_G.human.CFrame = basePos + Vector3.new(0, 6, 0)
end
end

function FireClickSpawn(func)
    _G.FireClick = func
	while _G.FireClick do task.wait()
	for i,v in pairs(base.ItemMachine.SpawnItem:GetChildren()) do
		if _G.FireClick then
		fireclickdetector(v)
	task.wait(3)
	end
	end
	end
end

function FastKill(func)
    _G.fastKill = func
while _G.fastKill do task.wait()
    if _G.fastKill == true and _G.char and _G.char.Humanoid and _G.char.Humanoid.Health >= 0.1 then
    for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
        if v.Name == "HumanoidRootPart" and _G.fastKill then
            
            _G.Velocity = Instance.new("BodyVelocity") 
            _G.Velocity.Parent = _G.human
            _G.Velocity.Velocity = Vector3.new(0, 0, 0)
            
            _G.char.Humanoid:EquipTool(_G.player.Backpack:FindFirstChild("Sword"))
            
            repeat if _G.fastKill and _G.char and _G.char.Humanoid and _G.char.Humanoid.Health >= 0.1 then
                for _,parts in pairs(v.Parent:GetChildren("Part")) do
                    if parts:IsA("Part") then
                        _G.parts = parts
                    else  task.wait()
                    end
                end
                
                spawn(function()
                        local Sword = _G.char.Sword
                        _G.human.CFrame = v.CFrame + Vector3.new(0, 0, 4)
                        firetouchinterest(Sword.Handle, _G.parts, 0)
                        firetouchinterest(Sword.Handle, _G.parts, 1)
                end)
                
                task.wait()
            end
            until _G.human == nil or _G.human.Parent == nil or v.Parent == nil or v.Parent.Humanoid.Health <= 0.1 or _G.char.Humanoid.Health <= 0.1 or v.Parent.Parent == nil
        else if _G.char == nil or _G.fastKill == false then break
        end
        end
    end
else task.wait()
end
end
if _G.Velocity then
    _G.Velocity:Destroy()
    else
end
end

function GodMode(func)
        _G.GodMode = func
        while _G.GodMode do task.wait(0.8)
            for i,v in pairs(game:GetDescendants()) do
                if v.Name == "LinkedSword" and _G.GodMode then
                    if v then
                    v:Destroy()
                end
            end
        end
    end
end
