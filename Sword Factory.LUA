-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Top = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local ImageButton_2 = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local Template = Instance.new("Frame")
local Temp = Instance.new("Frame")
local UIGridLayout_2 = Instance.new("UIGridLayout")
local CurrentOwner = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local Worth = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local SellingTime = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local ITEMID = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local Level = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")
local Mold = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")
local Enchant1 = Instance.new("TextLabel")
local UICorner_11 = Instance.new("UICorner")
local Enchant3 = Instance.new("TextLabel")
local UICorner_12 = Instance.new("UICorner")
local Enchant2 = Instance.new("TextLabel")
local UICorner_13 = Instance.new("UICorner")
local Class = Instance.new("TextLabel")
local UICorner_14 = Instance.new("UICorner")
local Rarity = Instance.new("TextLabel")
local UICorner_15 = Instance.new("UICorner")
local Quality = Instance.new("TextLabel")
local UICorner_16 = Instance.new("UICorner")
local UICorner_17 = Instance.new("UICorner")
local UICorner_18 = Instance.new("UICorner")
local Glow = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Main.Position = UDim2.new(0.242443323, 0, 0.167848691, 0)
Main.Size = UDim2.new(0.514483631, 0, 0.663120568, 0)

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top.BackgroundTransparency = 1.000
Top.Size = UDim2.new(1, 0, 0.0962566808, 0)

TextBox.Parent = Top
TextBox.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
TextBox.Position = UDim2.new(0.0611995123, 0, 0.212418169, 0)
TextBox.Size = UDim2.new(0.875153005, 0, 0.556644917, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderText = "Search..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 14)
UICorner.Parent = TextBox

ImageButton.Parent = Top
ImageButton.BackgroundColor3 = Color3.fromRGB(48, 210, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.0118959611, 0, 0.155037045, 0)
ImageButton.Size = UDim2.new(0.0419999994, 0, 0.671000004, 0)
ImageButton.Image = "rbxassetid://9095873413"

UICorner_2.CornerRadius = UDim.new(0, 14)
UICorner_2.Parent = ImageButton

ImageButton_2.Parent = Top
ImageButton_2.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
ImageButton_2.BackgroundTransparency = 1.000
ImageButton_2.Position = UDim2.new(0.948671877, 0, 0.153555423, 0)
ImageButton_2.Size = UDim2.new(0.0421059504, 0, 0.671063244, 0)
ImageButton_2.Image = "rbxassetid://9095899284"

UICorner_3.CornerRadius = UDim.new(0, 14)
UICorner_3.Parent = ImageButton_2

Frame.Parent = Top
Frame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
Frame.Position = UDim2.new(0.00367200794, 0, 0.881592453, 0)
Frame.Size = UDim2.new(0.99000001, 0, 0.100000001, 0)

UICorner_4.CornerRadius = UDim.new(0, 999999)
UICorner_4.Parent = Frame

ScrollingFrame.Parent = Main
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.00611995114, 0, 0.114081994, 0)
ScrollingFrame.Size = UDim2.new(0.987105846, 0, 0.875222802, 0)
ScrollingFrame.ScrollBarThickness = 6

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 20, 0, 10)
UIGridLayout.CellSize = UDim2.new(0, 785, 0, 78)

Template.Name = "Template"
Template.Parent = ScrollingFrame
Template.BackgroundColor3 = Color3.fromRGB(10, 76, 127)
Template.BorderSizePixel = 0
Template.Position = UDim2.new(0.00586848101, 0, 0, 0)
Template.Size = UDim2.new(0.973383307, 0, 0.158859476, 0)

Temp.Name = "Temp"
Temp.Parent = Template
Temp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Temp.BackgroundTransparency = 1.000
Temp.Position = UDim2.new(0.00627352577, 0, 0.0749999955, 0)
Temp.Size = UDim2.new(0.987452984, 0, 0.837499976, 0)

UIGridLayout_2.Parent = Temp
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.CellSize = UDim2.new(0, 125, 0, 30)

CurrentOwner.Name = "CurrentOwner"
CurrentOwner.Parent = Temp
CurrentOwner.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CurrentOwner.LayoutOrder = 1
CurrentOwner.Size = UDim2.new(0.161258996, 0, 0.459242284, 0)
CurrentOwner.Font = Enum.Font.Gotham
CurrentOwner.Text = "Owner"
CurrentOwner.TextColor3 = Color3.fromRGB(255, 255, 255)
CurrentOwner.TextScaled = true
CurrentOwner.TextSize = 14.000
CurrentOwner.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = CurrentOwner

Worth.Name = "Worth"
Worth.Parent = Temp
Worth.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Worth.LayoutOrder = 2
Worth.Size = UDim2.new(0.161258996, 0, 0.459242284, 0)
Worth.Font = Enum.Font.Gotham
Worth.Text = "Worth"
Worth.TextColor3 = Color3.fromRGB(255, 255, 255)
Worth.TextScaled = true
Worth.TextSize = 14.000
Worth.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 4)
UICorner_6.Parent = Worth

SellingTime.Name = "SellingTime"
SellingTime.Parent = Temp
SellingTime.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SellingTime.LayoutOrder = 4
SellingTime.Size = UDim2.new(0.161258996, 0, 0.459242284, 0)
SellingTime.Font = Enum.Font.Gotham
SellingTime.Text = "Selling time"
SellingTime.TextColor3 = Color3.fromRGB(255, 255, 255)
SellingTime.TextScaled = true
SellingTime.TextSize = 14.000
SellingTime.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 4)
UICorner_7.Parent = SellingTime

ITEMID.Name = "ITEMID"
ITEMID.Parent = Temp
ITEMID.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ITEMID.LayoutOrder = 7
ITEMID.Size = UDim2.new(0.161258996, 0, 0.459242284, 0)
ITEMID.Font = Enum.Font.Gotham
ITEMID.Text = "ITEMID"
ITEMID.TextColor3 = Color3.fromRGB(255, 255, 255)
ITEMID.TextScaled = true
ITEMID.TextSize = 14.000
ITEMID.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 4)
UICorner_8.Parent = ITEMID

Level.Name = "Level"
Level.Parent = Temp
Level.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Level.LayoutOrder = 3
Level.Size = UDim2.new(0.161258996, 0, 0.459242284, 0)
Level.Font = Enum.Font.Gotham
Level.Text = "Level"
Level.TextColor3 = Color3.fromRGB(255, 255, 255)
Level.TextScaled = true
Level.TextSize = 14.000
Level.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 4)
UICorner_9.Parent = Level

Mold.Name = "Mold"
Mold.Parent = Temp
Mold.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Mold.LayoutOrder = 12
Mold.Size = UDim2.new(0.161258996, 0, 0.459242284, 0)
Mold.Font = Enum.Font.Gotham
Mold.Text = "Mold"
Mold.TextColor3 = Color3.fromRGB(255, 255, 255)
Mold.TextScaled = true
Mold.TextSize = 14.000
Mold.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 4)
UICorner_10.Parent = Mold

Enchant1.Name = "Enchant1"
Enchant1.Parent = Temp
Enchant1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Enchant1.LayoutOrder = 8
Enchant1.Size = UDim2.new(0.161258996, 0, 0.459242284, 0)
Enchant1.Font = Enum.Font.Gotham
Enchant1.Text = "Enchant1"
Enchant1.TextColor3 = Color3.fromRGB(255, 255, 255)
Enchant1.TextScaled = true
Enchant1.TextSize = 14.000
Enchant1.TextWrapped = true

UICorner_11.CornerRadius = UDim.new(0, 4)
UICorner_11.Parent = Enchant1

Enchant3.Name = "Enchant3"
Enchant3.Parent = Temp
Enchant3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Enchant3.LayoutOrder = 10
Enchant3.Size = UDim2.new(0.161258996, 0, 0.459242284, 0)
Enchant3.Font = Enum.Font.Gotham
Enchant3.Text = "Enchant3"
Enchant3.TextColor3 = Color3.fromRGB(255, 255, 255)
Enchant3.TextScaled = true
Enchant3.TextSize = 14.000
Enchant3.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(0, 4)
UICorner_12.Parent = Enchant3

Enchant2.Name = "Enchant2"
Enchant2.Parent = Temp
Enchant2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Enchant2.LayoutOrder = 9
Enchant2.Size = UDim2.new(0.161258996, 0, 0.459242284, 0)
Enchant2.Font = Enum.Font.Gotham
Enchant2.Text = "Enchant2"
Enchant2.TextColor3 = Color3.fromRGB(255, 255, 255)
Enchant2.TextScaled = true
Enchant2.TextSize = 14.000
Enchant2.TextWrapped = true

UICorner_13.CornerRadius = UDim.new(0, 4)
UICorner_13.Parent = Enchant2

Class.Name = "Class"
Class.Parent = Temp
Class.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Class.LayoutOrder = 11
Class.Size = UDim2.new(0.161258996, 0, 0.459242284, 0)
Class.Font = Enum.Font.Gotham
Class.Text = "Class"
Class.TextColor3 = Color3.fromRGB(255, 255, 255)
Class.TextScaled = true
Class.TextSize = 14.000
Class.TextWrapped = true

UICorner_14.CornerRadius = UDim.new(0, 4)
UICorner_14.Parent = Class

Rarity.Name = "Rarity"
Rarity.Parent = Temp
Rarity.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Rarity.LayoutOrder = 6
Rarity.Size = UDim2.new(0.161258996, 0, 0.459242284, 0)
Rarity.Font = Enum.Font.Gotham
Rarity.Text = "Rarity"
Rarity.TextColor3 = Color3.fromRGB(255, 255, 255)
Rarity.TextScaled = true
Rarity.TextSize = 14.000
Rarity.TextWrapped = true

UICorner_15.CornerRadius = UDim.new(0, 4)
UICorner_15.Parent = Rarity

Quality.Name = "Quality"
Quality.Parent = Temp
Quality.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Quality.LayoutOrder = 5
Quality.Size = UDim2.new(0.161258996, 0, 0.459242284, 0)
Quality.Font = Enum.Font.Gotham
Quality.Text = "Quality"
Quality.TextColor3 = Color3.fromRGB(255, 255, 255)
Quality.TextScaled = true
Quality.TextSize = 14.000
Quality.TextWrapped = true

UICorner_16.CornerRadius = UDim.new(0, 4)
UICorner_16.Parent = Quality

UICorner_17.CornerRadius = UDim.new(0, 3)
UICorner_17.Parent = Template

UICorner_18.CornerRadius = UDim.new(0, 3)
UICorner_18.Parent = Main

Glow.Name = "Glow"
Glow.Parent = Main
Glow.BackgroundTransparency = 1.000
Glow.Position = UDim2.new(-0.0564130321, 0, -0.0566087477, 0)
Glow.Size = UDim2.new(1.11246061, 0, 1.11352396, 0)
Glow.ZIndex = 0
Glow.Image = "rbxassetid://5028857084"
Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow.SliceCenter = Rect.new(24, 24, 276, 276)

-- Scripts:

local function GHZIIPR_fake_script() -- ScrollingFrame.LocalScript 
	local script = Instance.new('LocalScript', ScrollingFrame)

	local player = game.Players.LocalPlayer
	local char = player.Character
	local human = char.HumanoidRootPart
	local base
	local template = script.Parent.Template
	script.Parent.AutomaticCanvasSize = Enum.AutomaticSize.XY
	
	for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
		if v.Name == player.Name.. "'s" .. " Base" then
			base = v
		end
	end
	
	local partFolder = Instance.new("Folder")
	partFolder.Parent = base
	partFolder.Name = "My Items"
	
	
	base.ItemMachine.Molder.Main.Touched:Connect(function(Part)
		task.wait(0.2)
		local part = Part.Parent
		if part.Parent == game:GetService("Workspace").Items then
			part.Parent = partFolder
			local temp = template:Clone()
			temp.Parent = script.Parent
			for _,Sword in pairs(part.Config:GetChildren()) do
				for i,v in pairs(temp.Temp:GetChildren()) do
					if Sword.Name == v.Name then
						Sword.Changed:Connect(function()
							v.Text = tostring(Sword.Value)
						end)
					end
				end
			end
		end
	end)
end
coroutine.wrap(GHZIIPR_fake_script)()
